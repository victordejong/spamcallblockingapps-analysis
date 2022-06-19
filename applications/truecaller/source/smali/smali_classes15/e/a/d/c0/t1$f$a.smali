.class public final Le/a/d/c0/t1$f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/t1$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipUtilImpl$startCall$1$1"
    f = "VoipUtilImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/t1$f;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/d/c0/t1$f;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/t1$f$a;->e:Le/a/d/c0/t1$f;

    iput-object p2, p0, Le/a/d/c0/t1$f$a;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/d/c0/t1$f$a;

    iget-object v0, p0, Le/a/d/c0/t1$f$a;->e:Le/a/d/c0/t1$f;

    iget-object v1, p0, Le/a/d/c0/t1$f$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/t1$f$a;-><init>(Le/a/d/c0/t1$f;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    move-object/from16 v2, p2

    check-cast v2, Ls1/w/d;

    const-string v3, "completion"

    .line 1
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Le/a/d/c0/t1$f$a;->e:Le/a/d/c0/t1$f;

    iget-object v4, v0, Le/a/d/c0/t1$f$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {v2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v5, Le/a/h/s0/c;->f:Le/a/h/s0/c$a;

    .line 5
    iget-object v6, v3, Le/a/d/c0/t1$f;->i:Ln3/r/a/l;

    .line 6
    iget-object v7, v3, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    .line 7
    iget-object v2, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 8
    iget-object v15, v3, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x570

    .line 9
    invoke-static/range {v5 .. v17}, Le/a/h/s0/c$a;->a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V

    return-object v1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Le/a/h/s0/c;->f:Le/a/h/s0/c$a;

    .line 3
    iget-object p1, p0, Le/a/d/c0/t1$f$a;->e:Le/a/d/c0/t1$f;

    iget-object v1, p1, Le/a/d/c0/t1$f;->i:Ln3/r/a/l;

    .line 4
    iget-object v2, p1, Le/a/d/c0/t1$f;->g:Lcom/truecaller/data/entity/Contact;

    .line 5
    iget-object v3, p0, Le/a/d/c0/t1$f$a;->f:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 6
    iget-object v10, p1, Le/a/d/c0/t1$f;->h:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x570

    .line 7
    invoke-static/range {v0 .. v12}, Le/a/h/s0/c$a;->a(Le/a/h/s0/c$a;Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;Ljava/lang/String;ZI)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
