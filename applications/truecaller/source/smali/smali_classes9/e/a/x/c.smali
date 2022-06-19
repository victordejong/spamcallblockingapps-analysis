.class public abstract Le/a/x/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/x/g;",
        ">",
        "Le/a/u2/a/a<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/x/w;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/x/w;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/x/c;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/x/c;->e:Le/a/x/w;

    return-void
.end method

.method public static Ij(Le/a/x/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v0, Le/a/x/c;->e:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->S0()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, v0, Le/a/x/c;->e:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->w()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Le/a/x/c;->e:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->V0()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 4
    :goto_2
    new-instance v15, Le/a/f/z/k0;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {v1}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3f74

    const/4 v6, 0x0

    move-object v3, v15

    move-object v2, v15

    move v15, v1

    .line 6
    invoke-direct/range {v3 .. v18}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/g;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Le/a/x/g;->C3(Le/a/f/z/k0;)V

    :cond_4
    return-void
.end method
