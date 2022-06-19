.class public final Le/a/j/a/d/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/d/a$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/d/a$e;


# direct methods
.method public constructor <init>(Le/a/j/a/d/a$e;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/d/a$e$a;->a:Le/a/j/a/d/a$e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;

    .line 2
    instance-of p2, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Le/a/j/a/d/a$e$a;->a:Le/a/j/a/d/a$e;

    iget-object p2, p2, Le/a/j/a/d/a$e;->f:Le/a/j/a/d/a;

    check-cast p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    .line 4
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$Rating;

    .line 5
    sget-object v0, Le/a/j/a/d/a;->j:[Ls1/a/l;

    .line 6
    invoke-virtual {p2}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object p2

    .line 7
    iget-object v0, p2, Le/a/j/d/a;->a:Landroid/widget/TextView;

    const-string v1, "header"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/Question$Rating;->getHeaderMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    iget-object p2, p2, Le/a/j/d/a;->a:Landroid/widget/TextView;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/Question$Rating;->getHeaderMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
