.class public Lw3/b/a/i0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lw3/b/a/g;

.field public final b:Ljava/lang/Integer;

.field public final c:[Lw3/b/a/i0/e$a;

.field public final d:I

.field public final synthetic e:Lw3/b/a/i0/e;


# direct methods
.method public constructor <init>(Lw3/b/a/i0/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lw3/b/a/i0/e$b;->e:Lw3/b/a/i0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    .line 3
    iput-object v0, p0, Lw3/b/a/i0/e$b;->a:Lw3/b/a/g;

    .line 4
    iget-object v0, p1, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lw3/b/a/i0/e$b;->b:Ljava/lang/Integer;

    .line 6
    iget-object v0, p1, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 7
    iput-object v0, p0, Lw3/b/a/i0/e$b;->c:[Lw3/b/a/i0/e$a;

    .line 8
    iget p1, p1, Lw3/b/a/i0/e;->k:I

    .line 9
    iput p1, p0, Lw3/b/a/i0/e$b;->d:I

    return-void
.end method
