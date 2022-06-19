.class public final Lu3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/k0$a;
    }
.end annotation


# instance fields
.field public a:Lu3/e;

.field public final b:Lu3/g0;

.field public final c:Lu3/f0;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lu3/y;

.field public final g:Lu3/z;

.field public final h:Lu3/l0;

.field public final i:Lu3/k0;

.field public final j:Lu3/k0;

.field public final k:Lu3/k0;

.field public final l:J

.field public final m:J

.field public final n:Lu3/p0/g/c;


# direct methods
.method public constructor <init>(Lu3/g0;Lu3/f0;Ljava/lang/String;ILu3/y;Lu3/z;Lu3/l0;Lu3/k0;Lu3/k0;Lu3/k0;JJLu3/p0/g/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lu3/k0;->b:Lu3/g0;

    iput-object v2, v0, Lu3/k0;->c:Lu3/f0;

    iput-object v3, v0, Lu3/k0;->d:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lu3/k0;->e:I

    move-object v1, p5

    iput-object v1, v0, Lu3/k0;->f:Lu3/y;

    iput-object v4, v0, Lu3/k0;->g:Lu3/z;

    move-object v1, p7

    iput-object v1, v0, Lu3/k0;->h:Lu3/l0;

    move-object v1, p8

    iput-object v1, v0, Lu3/k0;->i:Lu3/k0;

    move-object v1, p9

    iput-object v1, v0, Lu3/k0;->j:Lu3/k0;

    move-object/from16 v1, p10

    iput-object v1, v0, Lu3/k0;->k:Lu3/k0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lu3/k0;->l:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lu3/k0;->m:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lu3/k0;->n:Lu3/p0/g/c;

    return-void
.end method

.method public static d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "name"

    invoke-static {p1, p3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lu3/k0;->g:Lu3/z;

    invoke-virtual {p0, p1}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public final b()Lu3/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/k0;->a:Lu3/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lu3/e;->o:Lu3/e$a;

    iget-object v1, p0, Lu3/k0;->g:Lu3/z;

    invoke-virtual {v0, v1}, Lu3/e$a;->b(Lu3/z;)Lu3/e;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lu3/k0;->a:Lu3/e;

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/k0;->h:Lu3/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu3/l0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget v0, p0, Lu3/k0;->e:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu3/k0;->c:Lu3/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu3/k0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu3/k0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu3/k0;->b:Lu3/g0;

    .line 2
    iget-object v1, v1, Lu3/g0;->b:Lu3/a0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
