.class public final Lcom/truecaller/truecontext/TrueContext$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/truecontext/TrueContext;->setIsExpandable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/truecontext/TrueContext;


# direct methods
.method public constructor <init>(Lcom/truecaller/truecontext/TrueContext;Z)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/truecontext/TrueContext$b;->a:Lcom/truecaller/truecontext/TrueContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/truecontext/TrueContext$b;->a:Lcom/truecaller/truecontext/TrueContext;

    .line 2
    iget-object p1, p1, Lcom/truecaller/truecontext/TrueContext;->u:Le/a/m5/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/m5/c;->g4()V

    :cond_0
    return-void
.end method
