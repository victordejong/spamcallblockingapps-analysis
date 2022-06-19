.class public final Le/a/f/z/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/z/e;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/incallui/utils/FullscreenAcsConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/z/e;


# direct methods
.method public constructor <init>(Le/a/f/z/e;)V
    .locals 0

    iput-object p1, p0, Le/a/f/z/e$a;->b:Le/a/f/z/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 36

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Le/a/f/z/e$a;->b:Le/a/f/z/e;

    .line 2
    iget-object v0, v0, Le/a/f/z/e;->d:Ljavax/inject/Provider;

    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 4
    iget-object v2, v0, Le/a/u3/g;->j3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xda

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 5
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Le/m/e/k;

    invoke-direct {v2}, Le/m/e/k;-><init>()V

    const-class v3, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    invoke-virtual {v2, v0, v3}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "Could not parse FACS config: Json null"

    .line 7
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v34, 0x7fffffff

    const/16 v35, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v35}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;-><init>(Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;ILs1/z/c/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Could not parse FACS config: "

    .line 9
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v34, 0x7fffffff

    const/16 v35, 0x0

    invoke-direct/range {v2 .. v35}, Lcom/truecaller/incallui/utils/FullscreenAcsConfig;-><init>(Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;Lcom/truecaller/incallui/utils/FacsBehavior;ILs1/z/c/f;)V

    :goto_0
    return-object v0
.end method
