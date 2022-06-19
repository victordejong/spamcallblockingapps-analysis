.class public final Lcom/hiya/client/callerid/prefs/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/prefs/Cache$WrongProfileCacheFrequency;,
        Lcom/hiya/client/callerid/prefs/Cache$a;
    }
.end annotation


# static fields
.field private static final b:J

.field public static final c:Lcom/hiya/client/callerid/prefs/Cache$a;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hiya/client/callerid/prefs/Cache$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/prefs/Cache$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/prefs/Cache;->c:Lcom/hiya/client/callerid/prefs/Cache$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/client/callerid/prefs/Cache;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPref"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/hiya/client/callerid/prefs/Cache;->b:J

    return-wide v0
.end method

.method private final l(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DateUtils.formatTimeWithMillis(time)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "bg_cache_count_key"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "bg_cache_last_accessed_ttl_key"

    const-wide v2, 0x134fd9000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/prefs/Cache;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hiya/client/callerid/prefs/Cache;->l(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/prefs/Cache;->i()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hiya/client/callerid/prefs/Cache;->l(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "image_cache_count_key"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "image_cache_last_accessed_ttl_key"

    const-wide v2, 0x134fd9000L

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "spammer_cache_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "spammer_translation_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    const-string v1, "cache_count_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    sget-wide v1, Lcom/hiya/client/callerid/prefs/Cache;->b:J

    const-string v3, "cache_request_frequency_key"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/prefs/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/hiya/client/callerid/prefs/Cache$WrongProfileCacheFrequency;

    invoke-direct {v6, v4, v5}, Lcom/hiya/client/callerid/prefs/Cache$WrongProfileCacheFrequency;-><init>(J)V

    invoke-static {v0, v6}, Lcom/hiya/client/support/logging/d;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v1

    :cond_0
    return-wide v4
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg_cache_count_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final n(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg_cache_last_accessed_ttl_key"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "image_cache_count_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final p(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "image_cache_last_accessed_ttl_key"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spammer_cache_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final r(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "spammer_translation_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final s(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_count_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/Cache;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache_request_frequency_key"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
