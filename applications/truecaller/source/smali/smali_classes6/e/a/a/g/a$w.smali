.class public final Le/a/a/g/a$w;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->F(JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readMessageRawId$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Le/a/a/g/a;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$w;->e:Le/a/a/g/a;

    iput-wide p2, p0, Le/a/a/g/a$w;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$w;

    iget-object v0, p0, Le/a/a/g/a$w;->e:Le/a/a/g/a;

    iget-wide v1, p0, Le/a/a/g/a$w;->f:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$w;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/g/a$w;->e:Le/a/a/g/a;

    iget-wide v0, p0, Le/a/a/g/a$w;->f:J

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v2, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v3

    const-string p1, "MessagesTable.getContent\u2026ssagesTable.TRANSPORT_IM)"

    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const-string v4, "raw_id"

    const-string v5, "_id = ?"

    .line 8
    invoke-static/range {v2 .. v8}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/g/a$w;->e:Le/a/a/g/a;

    .line 3
    iget-object v0, p1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    const/4 p1, 0x2

    .line 4
    invoke-static {p1}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v1

    const-string p1, "MessagesTable.getContent\u2026ssagesTable.TRANSPORT_IM)"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iget-wide v2, p0, Le/a/a/g/a$w;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const-string v2, "raw_id"

    const-string v3, "_id = ?"

    .line 6
    invoke-static/range {v0 .. v6}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
