.class public final Ln3/y/b/a/q0/w/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/w/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/w/j;

.field public final b:Ln3/y/b/a/x0/v;

.field public final c:Ln3/y/b/a/x0/l;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/w/j;Ln3/y/b/a/x0/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/w/u$a;->a:Ln3/y/b/a/q0/w/j;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/q0/w/u$a;->b:Ln3/y/b/a/x0/v;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/l;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    return-void
.end method
