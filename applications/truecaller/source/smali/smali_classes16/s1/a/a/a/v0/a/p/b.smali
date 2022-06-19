.class public final Ls1/a/a/a/v0/a/p/b;
.super Ls1/a/a/a/v0/a/g;
.source "SourceFile"


# static fields
.field public static final f:Ls1/a/a/a/v0/a/g;

.field public static final g:Ls1/a/a/a/v0/a/p/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/p/b;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/p/b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/p/b;->f:Ls1/a/a/a/v0/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/l/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/a/g;->d(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic p()Ls1/a/a/a/v0/b/g1/c;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/g1/c$a;->a:Ls1/a/a/a/v0/b/g1/c$a;

    return-object v0
.end method
