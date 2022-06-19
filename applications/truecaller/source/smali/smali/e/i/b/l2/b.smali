.class public Le/i/b/l2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/s2/n;

.field public final c:Landroid/content/SharedPreferences;

.field public final d:Le/i/b/l2/c/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "^1([YN\\-yn]){3}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/i/b/l2/b;->e:Ljava/util/regex/Pattern;

    const-string v1, "1ynn"

    const-string v2, "1yny"

    const-string v3, "1---"

    const-string v4, ""

    const-string v5, "1yn-"

    const-string v6, "1-n-"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/i/b/l2/b;->f:Ljava/util/List;

    const-string v0, "explicit_no"

    const-string v1, "potential_whitelist"

    const-string v2, "dnt"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/i/b/l2/b;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Le/i/b/l2/c/d;

    invoke-direct {v1, p1}, Le/i/b/l2/c/d;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class p1, Le/i/b/l2/b;

    invoke-static {p1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object p1

    iput-object p1, p0, Le/i/b/l2/b;->a:Le/i/b/q2/h;

    .line 4
    iput-object v0, p0, Le/i/b/l2/b;->c:Landroid/content/SharedPreferences;

    .line 5
    new-instance p1, Le/i/b/s2/n;

    invoke-direct {p1, v0}, Le/i/b/s2/n;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    .line 6
    iput-object v1, p0, Le/i/b/l2/b;->d:Le/i/b/l2/c/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/i/b/l2/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MoPubConsent_String"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object v0, p0, Le/i/b/l2/b;->a:Le/i/b/q2/h;

    .line 5
    new-instance v7, Le/i/b/q2/f;

    const-string v1, "MoPub consent set: "

    .line 6
    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v1, v7

    .line 7
    invoke-direct/range {v1 .. v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v7}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method public b(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/i/b/l2/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USPrivacy_Optout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object v0, p0, Le/i/b/l2/b;->a:Le/i/b/q2/h;

    .line 5
    new-instance v7, Le/i/b/q2/f;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCPA opt-out set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v1, v7

    .line 7
    invoke-direct/range {v1 .. v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v7}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/l2/b;->b:Le/i/b/s2/n;

    const-string v1, "IABUSPrivacy_String"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
