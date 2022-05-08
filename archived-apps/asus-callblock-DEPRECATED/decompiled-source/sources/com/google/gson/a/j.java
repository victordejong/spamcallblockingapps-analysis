package com.google.gson.a;

import com.google.gson.c.a;
import com.google.gson.c.c;
import com.google.gson.c.d;
import com.google.gson.l;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/j.class */
public final class j {
    public static l a(a aVar) {
        l lVar;
        boolean z = true;
        try {
            aVar.f();
            z = false;
            lVar = com.google.gson.a.a.l.P.a(aVar);
        } catch (d e) {
            throw new u(e);
        } catch (EOFException e2) {
            if (z) {
                lVar = n.f4553a;
            } else {
                throw new u(e2);
            }
        } catch (IOException e3) {
            throw new m(e3);
        } catch (NumberFormatException e4) {
            throw new u(e4);
        }
        return lVar;
    }

    public static void a(l lVar, c cVar) {
        com.google.gson.a.a.l.P.a(cVar, lVar);
    }
}
