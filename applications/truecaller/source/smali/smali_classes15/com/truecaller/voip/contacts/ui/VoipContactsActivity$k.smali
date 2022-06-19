.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$k;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$k;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsActivity$k;->b:Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;

    const/16 v1, 0x30

    invoke-static {v0, v1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
