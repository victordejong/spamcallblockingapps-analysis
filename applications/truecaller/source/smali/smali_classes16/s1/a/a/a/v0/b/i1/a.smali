.class public final Ls1/a/a/a/v0/b/i1/a;
.super Ls1/a/a/a/v0/b/e1;
.source "SourceFile"


# static fields
.field public static final c:Ls1/a/a/a/v0/b/i1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/i1/a;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/i1/a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/i1/a;->c:Ls1/a/a/a/v0/b/i1/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "package"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/b/e1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/e1;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/b/d1;->b:Ls1/a/a/a/v0/b/d1;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/d1;->a(Ls1/a/a/a/v0/b/e1;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "public/*package*/"

    return-object v0
.end method

.method public c()Ls1/a/a/a/v0/b/e1;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/d1$g;->c:Ls1/a/a/a/v0/b/d1$g;

    return-object v0
.end method
