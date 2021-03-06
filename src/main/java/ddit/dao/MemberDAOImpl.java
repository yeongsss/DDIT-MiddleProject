
package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.MemberVO;

public class MemberDAOImpl implements IMemberDAO {

	private static MemberDAOImpl instance = null;
	private SqlMapClient smc = null;
	private MemberDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static MemberDAOImpl getInstance() {
		if(instance==null) instance = new MemberDAOImpl();
		return instance;
	}

	@Override
	public int join(MemberVO memVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("member.memberInsert", memVo);
			if( obj == null ) {
				cnt = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int idCheck(String memId) {
		int cnt = 0;
		try {
			cnt = (int)smc.queryForObject("member.idCheck",memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int updateMem(MemberVO memVo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("member.memberUpdate",memVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberVO login(MemberVO memVo) {
		MemberVO memVo1 = null;
		try {
//			memVo1 = (MemberVO)smc.queryForObject("member.login", memVo);
			memVo1 = (MemberVO)(smc.queryForObject("member.login", memVo));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memVo1;
	}

	@Override
	public List<MemberVO> getMemberList() {
		List<MemberVO> list = null;
		
		try {
			
			list = smc.queryForList("member.getMemberList");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	@Override
	public MemberVO getMember(MemberVO memVo) {
		
		MemberVO memVO = null;
		
		try {
			memVO = (MemberVO)smc.queryForObject("member.getMemberInfo", memVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memVO;
	}
	
	@Override
	public MemberVO getMemberOne(MemberVO memVo) {
		
			MemberVO memVO = null;
			try {
				memVO = (MemberVO)smc.queryForObject("member.getMemberOne", memVo);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return memVO;
	}
	
	@Override
	public int deleteMember(String memId) {
		int cnt = 0;
		
		try {
			cnt = smc.delete("member.memberDelete", memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberVO searchKkoLogin(MemberVO mvo) {
		MemberVO mvo1 = new MemberVO();
		try {
			Object obj = smc.queryForObject("member.searchKkoLogin",mvo);
			if(obj == null) {
				mvo1.setMem_kko("0");
			}else {
				mvo1 = (MemberVO)obj;
			}
		} catch (SQLException e) {
			mvo1 = null;
			e.printStackTrace();
		}
		return mvo1;
	}



	
}


