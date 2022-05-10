package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiq.class */
public interface zzbiq extends IInterface {
    /* renamed from: B */
    void mo15451B(String str) throws RemoteException;

    /* renamed from: E1 */
    String mo15450E1() throws RemoteException;

    /* renamed from: U0 */
    String mo15449U0() throws RemoteException;

    /* renamed from: a */
    Map mo15447a(String str, String str2, boolean z) throws RemoteException;

    /* renamed from: a */
    void mo15448a(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: b */
    List mo15445b(String str, String str2) throws RemoteException;

    /* renamed from: b */
    void mo15446b(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException;

    /* renamed from: b */
    void mo15444b(String str, String str2, Bundle bundle) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    /* renamed from: d1 */
    long mo15443d1() throws RemoteException;

    /* renamed from: f */
    int mo15441f(String str) throws RemoteException;

    /* renamed from: f */
    void mo15442f(Bundle bundle) throws RemoteException;

    /* renamed from: f1 */
    String mo15440f1() throws RemoteException;

    /* renamed from: h */
    Bundle mo15439h(Bundle bundle) throws RemoteException;

    /* renamed from: i */
    void mo15438i(Bundle bundle) throws RemoteException;

    /* renamed from: y1 */
    String mo15437y1() throws RemoteException;

    /* renamed from: z */
    void mo15436z(String str) throws RemoteException;

    /* renamed from: z1 */
    String mo15435z1() throws RemoteException;
}
