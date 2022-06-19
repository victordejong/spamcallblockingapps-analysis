.class public final Ln3/v/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/v/h;-><init>(Ls1/w/f;JLs1/z/b/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/v/h;


# direct methods
.method public constructor <init>(Ln3/v/h;)V
    .locals 0

    iput-object p1, p0, Ln3/v/h$a;->b:Ln3/v/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/h$a;->b:Ln3/v/h;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Ln3/v/h;->m:Ln3/v/e;

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
