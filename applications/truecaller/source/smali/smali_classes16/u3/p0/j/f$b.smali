.class public final Lu3/p0/j/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lv3/h;

.field public d:Lv3/g;

.field public e:Lu3/p0/j/f$c;

.field public f:Lu3/p0/j/s;

.field public g:I

.field public h:Z

.field public final i:Lu3/p0/f/d;


# direct methods
.method public constructor <init>(ZLu3/p0/f/d;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu3/p0/j/f$b;->h:Z

    iput-object p2, p0, Lu3/p0/j/f$b;->i:Lu3/p0/f/d;

    .line 2
    sget-object p1, Lu3/p0/j/f$c;->a:Lu3/p0/j/f$c;

    iput-object p1, p0, Lu3/p0/j/f$b;->e:Lu3/p0/j/f$c;

    .line 3
    sget-object p1, Lu3/p0/j/s;->a:Lu3/p0/j/s;

    iput-object p1, p0, Lu3/p0/j/f$b;->f:Lu3/p0/j/s;

    return-void
.end method
