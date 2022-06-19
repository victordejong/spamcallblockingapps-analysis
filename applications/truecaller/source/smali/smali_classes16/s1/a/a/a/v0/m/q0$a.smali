.class public final Ls1/a/a/a/v0/m/q0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/q0;-><init>(Ls1/a/a/a/v0/b/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/q0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/q0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/q0$a;->b:Ls1/a/a/a/v0/m/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/q0$a;->b:Ls1/a/a/a/v0/m/q0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/m/q0;->b:Ls1/a/a/a/v0/b/w0;

    .line 3
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->s3(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    return-object v0
.end method
