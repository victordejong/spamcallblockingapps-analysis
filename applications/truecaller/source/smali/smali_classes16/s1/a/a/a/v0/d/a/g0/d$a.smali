.class public Ls1/a/a/a/v0/d/a/g0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;IZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/d$a;->a:Ls1/a/a/a/v0/m/e0;

    iput p2, p0, Ls1/a/a/a/v0/d/a/g0/d$a;->b:I

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/g0/d$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/d$a;->a:Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method
