.class public final Lx3/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/z$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Lu3/a0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lu3/z;

.field public final f:Lu3/c0;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Lx3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lx3/w<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Lx3/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lx3/z$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lx3/z;->a:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, Lx3/z$a;->a:Lx3/b0;

    iget-object v0, v0, Lx3/b0;->c:Lu3/a0;

    iput-object v0, p0, Lx3/z;->b:Lu3/a0;

    .line 4
    iget-object v0, p1, Lx3/z$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lx3/z;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lx3/z$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lx3/z;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lx3/z$a;->s:Lu3/z;

    iput-object v0, p0, Lx3/z;->e:Lu3/z;

    .line 7
    iget-object v0, p1, Lx3/z$a;->t:Lu3/c0;

    iput-object v0, p0, Lx3/z;->f:Lu3/c0;

    .line 8
    iget-boolean v0, p1, Lx3/z$a;->o:Z

    iput-boolean v0, p0, Lx3/z;->g:Z

    .line 9
    iget-boolean v0, p1, Lx3/z$a;->p:Z

    iput-boolean v0, p0, Lx3/z;->h:Z

    .line 10
    iget-boolean v0, p1, Lx3/z$a;->q:Z

    iput-boolean v0, p0, Lx3/z;->i:Z

    .line 11
    iget-object v0, p1, Lx3/z$a;->v:[Lx3/w;

    iput-object v0, p0, Lx3/z;->j:[Lx3/w;

    .line 12
    iget-boolean p1, p1, Lx3/z$a;->w:Z

    iput-boolean p1, p0, Lx3/z;->k:Z

    return-void
.end method
