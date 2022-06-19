.class public Ln3/w/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/w/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final a:Ln3/w/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/b/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/w/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/a$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Ln3/w/b/b;Ln3/w/a/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "TD;>;",
            "Ln3/w/a/a$a<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/w/a/b$b;->c:Z

    .line 3
    iput-object p1, p0, Ln3/w/a/b$b;->a:Ln3/w/b/b;

    .line 4
    iput-object p2, p0, Ln3/w/a/b$b;->b:Ln3/w/a/a$a;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/w/a/b$b;->b:Ln3/w/a/a$a;

    iget-object v1, p0, Ln3/w/a/b$b;->a:Ln3/w/b/b;

    invoke-interface {v0, v1, p1}, Ln3/w/a/a$a;->onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/w/a/b$b;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/w/a/b$b;->b:Ln3/w/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
