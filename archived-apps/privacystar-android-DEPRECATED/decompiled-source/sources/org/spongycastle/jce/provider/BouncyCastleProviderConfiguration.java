package org.spongycastle.jce.provider;

import java.security.Permission;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.config.ProviderConfigurationPermission;
import org.spongycastle.jce.spec.ECParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/BouncyCastleProviderConfiguration.class */
class BouncyCastleProviderConfiguration implements ProviderConfiguration {
    private volatile Object dhDefaultParams;
    private volatile ECParameterSpec ecImplicitCaParams;
    private static Permission BC_EC_LOCAL_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.THREAD_LOCAL_EC_IMPLICITLY_CA);
    private static Permission BC_EC_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.EC_IMPLICITLY_CA);
    private static Permission BC_DH_LOCAL_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.THREAD_LOCAL_DH_DEFAULT_PARAMS);
    private static Permission BC_DH_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.DH_DEFAULT_PARAMS);
    private static Permission BC_EC_CURVE_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.ACCEPTABLE_EC_CURVES);
    private static Permission BC_ADDITIONAL_EC_CURVE_PERMISSION = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, ConfigurableProvider.ADDITIONAL_EC_PARAMETERS);
    private ThreadLocal ecThreadSpec = new ThreadLocal();
    private ThreadLocal dhThreadSpec = new ThreadLocal();
    private volatile Set acceptableNamedCurves = new HashSet();
    private volatile Map additionalECParameters = new HashMap();

    @Override // org.spongycastle.jcajce.provider.config.ProviderConfiguration
    public Set getAcceptableNamedCurves() {
        return Collections.unmodifiableSet(this.acceptableNamedCurves);
    }

    @Override // org.spongycastle.jcajce.provider.config.ProviderConfiguration
    public Map getAdditionalECParameters() {
        return Collections.unmodifiableMap(this.additionalECParameters);
    }

    @Override // org.spongycastle.jcajce.provider.config.ProviderConfiguration
    public DHParameterSpec getDHDefaultParameters(int i) {
        Object obj = this.dhThreadSpec.get();
        Object obj2 = obj;
        if (obj == null) {
            obj2 = this.dhDefaultParams;
        }
        if (obj2 instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) obj2;
            if (dHParameterSpec.getP().bitLength() == i) {
                return dHParameterSpec;
            }
            return null;
        } else if (!(obj2 instanceof DHParameterSpec[])) {
            return null;
        } else {
            DHParameterSpec[] dHParameterSpecArr = (DHParameterSpec[]) obj2;
            for (int i2 = 0; i2 != dHParameterSpecArr.length; i2++) {
                if (dHParameterSpecArr[i2].getP().bitLength() == i) {
                    return dHParameterSpecArr[i2];
                }
            }
            return null;
        }
    }

    @Override // org.spongycastle.jcajce.provider.config.ProviderConfiguration
    public ECParameterSpec getEcImplicitlyCa() {
        ECParameterSpec eCParameterSpec = (ECParameterSpec) this.ecThreadSpec.get();
        return eCParameterSpec != null ? eCParameterSpec : this.ecImplicitCaParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setParameter(String str, Object obj) {
        SecurityManager securityManager = System.getSecurityManager();
        if (str.equals(ConfigurableProvider.THREAD_LOCAL_EC_IMPLICITLY_CA)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_EC_LOCAL_PERMISSION);
            }
            ECParameterSpec convertSpec = ((obj instanceof ECParameterSpec) || obj == null) ? (ECParameterSpec) obj : EC5Util.convertSpec((java.security.spec.ECParameterSpec) obj, false);
            if (convertSpec == null) {
                this.ecThreadSpec.remove();
            } else {
                this.ecThreadSpec.set(convertSpec);
            }
        } else if (str.equals(ConfigurableProvider.EC_IMPLICITLY_CA)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_EC_PERMISSION);
            }
            if ((obj instanceof ECParameterSpec) || obj == null) {
                this.ecImplicitCaParams = (ECParameterSpec) obj;
            } else {
                this.ecImplicitCaParams = EC5Util.convertSpec((java.security.spec.ECParameterSpec) obj, false);
            }
        } else if (str.equals(ConfigurableProvider.THREAD_LOCAL_DH_DEFAULT_PARAMS)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_DH_LOCAL_PERMISSION);
            }
            if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                throw new IllegalArgumentException("not a valid DHParameterSpec");
            } else if (obj == null) {
                this.dhThreadSpec.remove();
            } else {
                this.dhThreadSpec.set(obj);
            }
        } else if (str.equals(ConfigurableProvider.DH_DEFAULT_PARAMS)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_DH_PERMISSION);
            }
            if ((obj instanceof DHParameterSpec) || (obj instanceof DHParameterSpec[]) || obj == null) {
                this.dhDefaultParams = obj;
                return;
            }
            throw new IllegalArgumentException("not a valid DHParameterSpec or DHParameterSpec[]");
        } else if (str.equals(ConfigurableProvider.ACCEPTABLE_EC_CURVES)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_EC_CURVE_PERMISSION);
            }
            this.acceptableNamedCurves = (Set) obj;
        } else if (str.equals(ConfigurableProvider.ADDITIONAL_EC_PARAMETERS)) {
            if (securityManager != null) {
                securityManager.checkPermission(BC_ADDITIONAL_EC_CURVE_PERMISSION);
            }
            this.additionalECParameters = (Map) obj;
        }
    }
}
