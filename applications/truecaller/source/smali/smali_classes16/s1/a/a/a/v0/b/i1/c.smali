.class public final Ls1/a/a/a/v0/b/i1/c;
.super Ls1/a/a/a/v0/b/e1;
.source "SourceFile"


# static fields
.field public static final c:Ls1/a/a/a/v0/b/i1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/i1/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/i1/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/i1/c;->c:Ls1/a/a/a/v0/b/i1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected_static"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/b/e1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "protected/*protected static*/"

    return-object v0
.end method

.method public c()Ls1/a/a/a/v0/b/e1;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/d1$g;->c:Ls1/a/a/a/v0/b/d1$g;

    return-object v0
.end method
