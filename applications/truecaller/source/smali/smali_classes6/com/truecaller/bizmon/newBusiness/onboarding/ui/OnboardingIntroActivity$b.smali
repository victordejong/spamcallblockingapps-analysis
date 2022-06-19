.class public final Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;->s5(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$b;->b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$b;->b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;

    invoke-virtual {v0}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;->pa()Le/a/b/a/c/a/o;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/b/a/c/a/o;->x4(Ljava/lang/String;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
