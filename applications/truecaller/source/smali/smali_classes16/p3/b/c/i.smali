.class public final Lp3/b/c/i;
.super Lp3/b/c/o;
.source "SourceFile"


# static fields
.field public static final e:Lp3/b/c/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp3/b/c/i;

    invoke-direct {v0}, Lp3/b/c/i;-><init>()V

    sput-object v0, Lp3/b/c/i;->e:Lp3/b/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lp3/b/c/p;->e:Lp3/b/c/p;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lp3/b/c/o;-><init>(Lp3/b/c/p;Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public a(Lp3/b/c/m;)V
    .locals 1

    const-string v0, "messageEvent"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lp3/b/c/n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public c(Lp3/b/c/l;)V
    .locals 1

    const-string v0, "options"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;Lp3/b/c/a;)V
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2
    invoke-static {p2, p1}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/b/c/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attributes"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp3/b/c/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    .line 1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "attributes"

    .line 2
    invoke-static {p2, p1}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BlankSpan"

    return-object v0
.end method
