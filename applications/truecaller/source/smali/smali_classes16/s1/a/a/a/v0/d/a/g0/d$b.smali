.class public final Ls1/a/a/a/v0/d/a/g0/d$b;
.super Ls1/a/a/a/v0/d/a/g0/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Ls1/a/a/a/v0/m/l0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;IZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls1/a/a/a/v0/d/a/g0/d$a;-><init>(Ls1/a/a/a/v0/m/e0;IZ)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method
