.class public Ls1/a/a/a/v0/d/a/g0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;ZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/l$a;->a:Ls1/a/a/a/v0/m/e0;

    iput-boolean p2, p0, Ls1/a/a/a/v0/d/a/g0/l$a;->b:Z

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/g0/l$a;->c:Z

    return-void
.end method
