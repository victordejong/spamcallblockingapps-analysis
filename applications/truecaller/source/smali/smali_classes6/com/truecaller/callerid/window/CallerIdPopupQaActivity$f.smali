.class public final Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/j2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$f;->b:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/window/CallerIdPopupQaActivity$f;->b:Lcom/truecaller/callerid/window/CallerIdPopupQaActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    return-object v0
.end method
