.class public final Lu3/j0$a$a;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/j0$a;->d([BLu3/c0;II)Lu3/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:Lu3/c0;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>([BLu3/c0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/j0$a$a;->b:[B

    iput-object p2, p0, Lu3/j0$a$a;->c:Lu3/c0;

    iput p3, p0, Lu3/j0$a$a;->d:I

    iput p4, p0, Lu3/j0$a$a;->e:I

    invoke-direct {p0}, Lu3/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lu3/j0$a$a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/j0$a$a;->c:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/j0$a$a;->b:[B

    iget v1, p0, Lu3/j0$a$a;->e:I

    iget v2, p0, Lu3/j0$a$a;->d:I

    invoke-interface {p1, v0, v1, v2}, Lv3/g;->write([BII)Lv3/g;

    return-void
.end method
