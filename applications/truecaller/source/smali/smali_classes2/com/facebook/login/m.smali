.class public Lcom/facebook/login/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/facebook/internal/q0$b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Date;

.field public final synthetic e:Ljava/util/Date;

.field public final synthetic f:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/q0$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/m;->f:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/m;->b:Lcom/facebook/internal/q0$b;

    iput-object p4, p0, Lcom/facebook/login/m;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/login/m;->d:Ljava/util/Date;

    iput-object p6, p0, Lcom/facebook/login/m;->e:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/login/m;->f:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/m;->b:Lcom/facebook/internal/q0$b;

    iget-object v3, p0, Lcom/facebook/login/m;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/m;->d:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/m;->e:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/DeviceAuthDialog;->PA(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/q0$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method
