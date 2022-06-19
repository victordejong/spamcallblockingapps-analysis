.class public final enum Lcom/facebook/login/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/q;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B?\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0007\u001a\u00020\u0003J\u0006\u0010\u0006\u001a\u00020\u0003J\u0006\u0010\u0008\u001a\u00020\u0003J\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/login/LoginBehavior;",
        "",
        "allowsGetTokenAuth",
        "",
        "allowsKatanaAuth",
        "allowsWebViewAuth",
        "allowsDeviceAuth",
        "allowsCustomTabAuth",
        "allowsFacebookLiteAuth",
        "allowsInstagramAppAuth",
        "(Ljava/lang/String;IZZZZZZZ)V",
        "NATIVE_WITH_FALLBACK",
        "NATIVE_ONLY",
        "KATANA_ONLY",
        "WEB_ONLY",
        "WEB_VIEW_ONLY",
        "DIALOG_ONLY",
        "DEVICE_AUTH",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum g:Lcom/facebook/login/q;

.field public static final enum h:Lcom/facebook/login/q;

.field public static final enum i:Lcom/facebook/login/q;

.field public static final enum j:Lcom/facebook/login/q;

.field public static final enum k:Lcom/facebook/login/q;

.field public static final enum l:Lcom/facebook/login/q;

.field public static final enum m:Lcom/facebook/login/q;

.field public static final synthetic n:[Lcom/facebook/login/q;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v10, Lcom/facebook/login/q;

    const-string v1, "NATIVE_WITH_FALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v10, Lcom/facebook/login/q;->g:Lcom/facebook/login/q;

    .line 2
    new-instance v0, Lcom/facebook/login/q;

    const-string v12, "NATIVE_ONLY"

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v0, Lcom/facebook/login/q;->h:Lcom/facebook/login/q;

    .line 3
    new-instance v1, Lcom/facebook/login/q;

    const-string v22, "KATANA_ONLY"

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v1, Lcom/facebook/login/q;->i:Lcom/facebook/login/q;

    .line 4
    new-instance v2, Lcom/facebook/login/q;

    const-string v12, "WEB_ONLY"

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v2, Lcom/facebook/login/q;->j:Lcom/facebook/login/q;

    .line 5
    new-instance v3, Lcom/facebook/login/q;

    const-string v22, "WEB_VIEW_ONLY"

    const/16 v23, 0x4

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v3, Lcom/facebook/login/q;->k:Lcom/facebook/login/q;

    .line 6
    new-instance v4, Lcom/facebook/login/q;

    const-string v12, "DIALOG_ONLY"

    const/4 v13, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v4, Lcom/facebook/login/q;->l:Lcom/facebook/login/q;

    .line 7
    new-instance v5, Lcom/facebook/login/q;

    const-string v22, "DEVICE_AUTH"

    const/16 v23, 0x6

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Lcom/facebook/login/q;-><init>(Ljava/lang/String;IZZZZZZZ)V

    sput-object v5, Lcom/facebook/login/q;->m:Lcom/facebook/login/q;

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/facebook/login/q;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    sput-object v6, Lcom/facebook/login/q;->n:[Lcom/facebook/login/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/facebook/login/q;->a:Z

    .line 3
    iput-boolean p4, p0, Lcom/facebook/login/q;->b:Z

    .line 4
    iput-boolean p5, p0, Lcom/facebook/login/q;->c:Z

    .line 5
    iput-boolean p6, p0, Lcom/facebook/login/q;->d:Z

    .line 6
    iput-boolean p7, p0, Lcom/facebook/login/q;->e:Z

    .line 7
    iput-boolean p9, p0, Lcom/facebook/login/q;->f:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/q;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/login/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/login/q;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/q;
    .locals 2

    sget-object v0, Lcom/facebook/login/q;->n:[Lcom/facebook/login/q;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/login/q;

    return-object v0
.end method
