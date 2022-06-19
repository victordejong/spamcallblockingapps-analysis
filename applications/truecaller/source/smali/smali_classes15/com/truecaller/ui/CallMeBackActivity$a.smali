.class public Lcom/truecaller/ui/CallMeBackActivity$a;
.super Le/a/f4/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/CallMeBackActivity;->sa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/f4/i/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lu3/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/ui/CallMeBackActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/CallMeBackActivity;Lx3/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity$a;->e:Lcom/truecaller/ui/CallMeBackActivity;

    invoke-direct {p0, p2}, Le/a/f4/i/c;-><init>(Lx3/b;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Exception;I)V
    .locals 1

    const p1, 0x7f12027d

    const/16 v0, 0x195

    if-eq p2, v0, :cond_1

    const/16 v0, 0x199

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f120136

    goto :goto_0

    :cond_1
    const p1, 0x7f120135

    .line 1
    :goto_0
    iget-object p2, p0, Lcom/truecaller/ui/CallMeBackActivity$a;->e:Lcom/truecaller/ui/CallMeBackActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lu3/l0;

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/CallMeBackActivity$a;->e:Lcom/truecaller/ui/CallMeBackActivity;

    .line 3
    iget-object v0, p1, Lcom/truecaller/ui/CallMeBackActivity;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/truecaller/ui/CallMeBackActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
