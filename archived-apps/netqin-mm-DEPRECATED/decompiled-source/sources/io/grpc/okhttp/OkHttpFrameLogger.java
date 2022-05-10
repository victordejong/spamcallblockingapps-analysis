package io.grpc.okhttp;

import com.applovin.sdk.AppLovinEventTypes;
import io.grpc.okhttp.internal.framed.ErrorCode;
import java.util.EnumMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p533w0.p534o.p535f.C9601c;
import p530d.p531a.p533w0.p534o.p535f.C9612g;
import p610i.C10260c;
/* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpFrameLogger.class */
public class OkHttpFrameLogger {

    /* renamed from: a */
    public final Logger f38291a;

    /* renamed from: b */
    public final Level f38292b;

    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpFrameLogger$Direction.class */
    public enum Direction {
        INBOUND,
        OUTBOUND
    }

    /* loaded from: classes2-dex2jar.jar:io/grpc/okhttp/OkHttpFrameLogger$SettingParams.class */
    public enum SettingParams {
        HEADER_TABLE_SIZE(1),
        ENABLE_PUSH(2),
        MAX_CONCURRENT_STREAMS(4),
        MAX_FRAME_SIZE(5),
        MAX_HEADER_LIST_SIZE(6),
        INITIAL_WINDOW_SIZE(7);
        
        public final int bit;

        SettingParams(int i) {
            this.bit = i;
        }

        public int getBit() {
            return this.bit;
        }
    }

    public OkHttpFrameLogger(Level level, Class<?> cls) {
        this(level, Logger.getLogger(cls.getName()));
    }

    public OkHttpFrameLogger(Level level, Logger logger) {
        C4933n.m24794a(level, AppLovinEventTypes.USER_COMPLETED_LEVEL);
        this.f38292b = level;
        C4933n.m24794a(logger, "logger");
        this.f38291a = logger;
    }

    /* renamed from: a */
    public static String m308a(C9612g gVar) {
        SettingParams[] values;
        EnumMap enumMap = new EnumMap(SettingParams.class);
        for (SettingParams settingParams : SettingParams.values()) {
            if (gVar.m2183c(settingParams.getBit())) {
                enumMap.put((EnumMap) settingParams, (SettingParams) Integer.valueOf(gVar.m2187a(settingParams.getBit())));
            }
        }
        return enumMap.toString();
    }

    /* renamed from: a */
    public static String m307a(C10260c cVar) {
        if (cVar.size() <= 64) {
            return cVar.m765k().hex();
        }
        int min = (int) Math.min(cVar.size(), 64L);
        return cVar.m781a(min).hex() + "...";
    }

    /* renamed from: a */
    public void m306a(Direction direction) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " SETTINGS: ack=true");
        }
    }

    /* renamed from: a */
    public void m305a(Direction direction, int i, int i2, List<C9601c> list) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " PUSH_PROMISE: streamId=" + i + " promisedStreamId=" + i2 + " headers=" + list);
        }
    }

    /* renamed from: a */
    public void m304a(Direction direction, int i, long j) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " WINDOW_UPDATE: streamId=" + i + " windowSizeIncrement=" + j);
        }
    }

    /* renamed from: a */
    public void m303a(Direction direction, int i, C10260c cVar, int i2, boolean z) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " DATA: streamId=" + i + " endStream=" + z + " length=" + i2 + " bytes=" + m307a(cVar));
        }
    }

    /* renamed from: a */
    public void m302a(Direction direction, int i, ErrorCode errorCode) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " RST_STREAM: streamId=" + i + " errorCode=" + errorCode);
        }
    }

    /* renamed from: a */
    public void m301a(Direction direction, int i, ErrorCode errorCode, ByteString byteString) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            StringBuilder sb = new StringBuilder();
            sb.append(direction);
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i);
            sb.append(" errorCode=");
            sb.append(errorCode);
            sb.append(" length=");
            sb.append(byteString.size());
            sb.append(" bytes=");
            C10260c cVar = new C10260c();
            cVar.mo738a(byteString);
            sb.append(m307a(cVar));
            logger.log(level, sb.toString());
        }
    }

    /* renamed from: a */
    public void m300a(Direction direction, int i, List<C9601c> list, boolean z) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " HEADERS: streamId=" + i + " headers=" + list + " endStream=" + z);
        }
    }

    /* renamed from: a */
    public void m299a(Direction direction, long j) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " PING: ack=false bytes=" + j);
        }
    }

    /* renamed from: a */
    public void m298a(Direction direction, C9612g gVar) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " SETTINGS: ack=false settings=" + m308a(gVar));
        }
    }

    /* renamed from: a */
    public final boolean m309a() {
        return this.f38291a.isLoggable(this.f38292b);
    }

    /* renamed from: b */
    public void m297b(Direction direction, long j) {
        if (m309a()) {
            Logger logger = this.f38291a;
            Level level = this.f38292b;
            logger.log(level, direction + " PING: ack=true bytes=" + j);
        }
    }
}
