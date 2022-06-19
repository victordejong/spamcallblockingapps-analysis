.class public final Le/a/j/e/f$a;
.super Le/a/j/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/surveys/data/entities/Question;

.field public final b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/surveys/data/entities/Question;Lcom/truecaller/surveys/data/entities/SurveyFlow;Z)V
    .locals 1

    const-string v0, "question"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/j/e/f;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    iput-object p2, p0, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    iput-boolean p3, p0, Le/a/j/e/f$a;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/j/e/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/j/e/f$a;

    iget-object v0, p0, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    iget-object v1, p1, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    iget-object v1, p1, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/j/e/f$a;->c:Z

    iget-boolean p1, p1, Le/a/j/e/f$a;->c:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/j/e/f$a;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Active(question="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBottomSheetQuestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/j/e/f$a;->c:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
