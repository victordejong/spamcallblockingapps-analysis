.class public abstract Ls1/a/a/a/v0/m/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/m/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/b1$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/b1$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/b1;->a:Ls1/a/a/a/v0/m/b1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ls1/a/a/a/v0/m/d1;
    .locals 2

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/m/d1;->e(Ls1/a/a/a/v0/m/b1;)Ls1/a/a/a/v0/m/d1;

    move-result-object v0

    const-string v1, "TypeSubstitutor.create(this)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/y0;
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
