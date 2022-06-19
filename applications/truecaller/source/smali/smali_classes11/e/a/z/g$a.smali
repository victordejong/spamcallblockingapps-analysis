.class public final Le/a/z/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/z/g;-><init>(Landroid/content/Context;Le/a/z/m/a;Le/a/b0/q/l0;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/z/g;


# direct methods
.method public constructor <init>(Le/a/z/g;)V
    .locals 0

    iput-object p1, p0, Le/a/z/g$a;->b:Le/a/z/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/z/g$a;->b:Le/a/z/g;

    .line 2
    iget-object v1, v1, Le/a/z/g;->e:Le/a/u3/g;

    .line 3
    :try_start_0
    iget-object v2, v1, Le/a/u3/g;->B3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xed

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 4
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Le/m/e/k;

    invoke-direct {v2}, Le/m/e/k;-><init>()V

    const-class v3, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    invoke-virtual {v2, v1, v3}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILs1/z/c/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v1, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/truecaller/personalsafety/domain/data/PersonalSafetyHomePromoConfig;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILs1/z/c/f;)V

    :goto_0
    return-object v1
.end method
