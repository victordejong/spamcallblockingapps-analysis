.class public final Le/a/g/a/b/a$s;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$s;->b:Le/a/g/a/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object v1, p0, Le/a/g/a/b/a$s;->b:Le/a/g/a/b/a;

    .line 2
    sget-object v2, Le/a/g/a/b/a;->A:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/g/a/b/a;->QA()Le/a/g/h/a;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/a/g/h/a;->h:Landroid/widget/Button;

    const-string v2, "binding.buttonViewProfile"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Le/a/g/a/b/a$s;->b:Le/a/g/a/b/a;

    .line 5
    invoke-virtual {v2}, Le/a/g/a/b/a;->QA()Le/a/g/h/a;

    move-result-object v2

    .line 6
    iget-object v2, v2, Le/a/g/h/a;->E:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    const-string v3, "binding.textPhonebookNumber"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Le/a/g/a/b/a$s;->b:Le/a/g/a/b/a;

    .line 7
    invoke-virtual {v2}, Le/a/g/a/b/a;->QA()Le/a/g/h/a;

    move-result-object v2

    .line 8
    iget-object v2, v2, Le/a/g/h/a;->O:Lcom/truecaller/timezone/AddressTimezoneView;

    const-string v3, "binding.viewAddressTimezone"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
