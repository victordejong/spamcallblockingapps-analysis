.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyListQaActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lq3/b/l/c;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/survey/qa/SurveyListQaActivity$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/survey/qa/SurveyListQaActivity$b;

    invoke-direct {v0}, Lcom/truecaller/survey/qa/SurveyListQaActivity$b;-><init>()V

    sput-object v0, Lcom/truecaller/survey/qa/SurveyListQaActivity$b;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lq3/b/l/c;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lq3/b/l/c;->e:Z

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
