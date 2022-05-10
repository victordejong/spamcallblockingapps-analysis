package com.google.common.net;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4940r;
/* loaded from: classes2-dex2jar.jar:com/google/common/net/HostAndPort.class */
public final class HostAndPort implements Serializable {
    public static final int NO_PORT = -1;
    public static final long serialVersionUID = 0;
    public final boolean hasBracketlessColons;
    public final String host;
    public final int port;

    public HostAndPort(String str, int i, boolean z) {
        this.host = str;
        this.port = i;
        this.hasBracketlessColons = z;
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort fromString = fromString(str);
        C4933n.m24782a(!fromString.hasPort(), "Host has a port: %s", str);
        return fromString;
    }

    public static HostAndPort fromParts(String str, int i) {
        C4933n.m24787a(isValidPort(i), "Port out of range: %s", i);
        HostAndPort fromString = fromString(str);
        C4933n.m24782a(!fromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(fromString.host, i, fromString.hasBracketlessColons);
    }

    public static HostAndPort fromString(String str) {
        String str2;
        String str3;
        C4933n.m24795a(str);
        int i = -1;
        boolean z = false;
        if (str.startsWith("[")) {
            String[] hostAndPortFromBracketedHost = getHostAndPortFromBracketedHost(str);
            str2 = hostAndPortFromBracketedHost[0];
            str3 = hostAndPortFromBracketedHost[1];
            z = false;
        } else {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                int i2 = indexOf + 1;
                if (str.indexOf(58, i2) == -1) {
                    str2 = str.substring(0, indexOf);
                    str3 = str.substring(i2);
                    z = false;
                }
            }
            if (indexOf >= 0) {
                z = true;
            }
            str3 = null;
            str2 = str;
        }
        if (!C4940r.m24755a(str3)) {
            C4933n.m24782a(!str3.startsWith("+"), "Unparseable port number: %s", str);
            try {
                i = Integer.parseInt(str3);
                C4933n.m24782a(isValidPort(i), "Port number out of range: %s", str);
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Unparseable port number: " + str);
            }
        }
        return new HostAndPort(str2, i, z);
    }

    public static String[] getHostAndPortFromBracketedHost(String str) {
        C4933n.m24782a(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        C4933n.m24782a(indexOf > -1 && lastIndexOf > indexOf, "Invalid bracketed host/port: %s", str);
        String substring = str.substring(1, lastIndexOf);
        int i = lastIndexOf + 1;
        if (i == str.length()) {
            return new String[]{substring, ""};
        }
        C4933n.m24782a(str.charAt(i) == ':', "Only a colon may follow a close bracket: %s", str);
        int i2 = lastIndexOf + 2;
        for (int i3 = i2; i3 < str.length(); i3++) {
            C4933n.m24782a(Character.isDigit(str.charAt(i3)), "Port must be numeric: %s", str);
        }
        return new String[]{substring, str.substring(i2)};
    }

    public static boolean isValidPort(int i) {
        return i >= 0 && i <= 65535;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        if (!C4928k.m24808a(this.host, hostAndPort.host) || this.port != hostAndPort.port) {
            z = false;
        }
        return z;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        C4933n.m24776b(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i) {
        if (hasPort()) {
            i = this.port;
        }
        return i;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    public int hashCode() {
        return C4928k.m24807a(this.host, Integer.valueOf(this.port));
    }

    public HostAndPort requireBracketsForIPv6() {
        C4933n.m24782a(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(this.host);
            sb.append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':');
            sb.append(this.port);
        }
        return sb.toString();
    }

    public HostAndPort withDefaultPort(int i) {
        C4933n.m24791a(isValidPort(i));
        return hasPort() ? this : new HostAndPort(this.host, i, this.hasBracketlessColons);
    }
}
