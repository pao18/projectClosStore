package com.epn.edu.ec.pmf;

import javax.jdo.JDOHelper;
import javax.jdo.PersistenceManagerFactory;

public class GenericPMF {
	private static final PersistenceManagerFactory pmfInstancia = JDOHelper.getPersistenceManagerFactory("transactions-optional");

	public GenericPMF() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static PersistenceManagerFactory getPmfinstancia() {
		return pmfInstancia;
	}
}
