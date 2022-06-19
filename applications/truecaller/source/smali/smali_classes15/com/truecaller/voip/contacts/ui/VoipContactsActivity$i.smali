.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o2/r<",
        "-",
        "Le/a/d/d/a/a/c/c;",
        "-",
        "Le/a/d/d/a/a/c/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Le/a/o2/r;

    .line 2
    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    .line 3
    iget-object v1, v1, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;->m:Le/a/d/d/a/a/c/a;

    if-eqz v1, :cond_0

    const v2, 0x7f0d02d6

    .line 4
    new-instance v3, Le/a/d/d/a/e;

    invoke-direct {v3, p0}, Le/a/d/d/a/e;-><init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$i;)V

    .line 5
    sget-object v4, Le/a/d/d/a/f;->b:Le/a/d/d/a/f;

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    return-object v0

    :cond_0
    const-string v0, "groupBannerPresenter"

    .line 7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
