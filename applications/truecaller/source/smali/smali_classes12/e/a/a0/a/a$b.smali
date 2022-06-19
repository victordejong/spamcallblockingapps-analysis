.class public final Le/a/a0/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/a/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;


# direct methods
.method public constructor <init>(Le/a/a0/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a0/a/a$b;->a:Le/a/a0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/contactfeedback/model/Profile;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a0/a/a$b;->a:Le/a/a0/a/a;

    invoke-virtual {v0}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object v0

    check-cast v0, Le/a/a0/b;

    .line 2
    iput-object p1, v0, Le/a/a0/b;->j:Lcom/truecaller/contactfeedback/model/Profile;

    .line 3
    iget-object p1, p0, Le/a/a0/a/a$b;->a:Le/a/a0/a/a;

    .line 4
    invoke-virtual {p1}, Le/a/a0/a/a;->XA()Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 6
    iget-object p1, p0, Le/a/a0/a/a$b;->a:Le/a/a0/a/a;

    .line 7
    invoke-virtual {p1}, Le/a/a0/a/a;->XA()Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;->c()V

    return-void
.end method
