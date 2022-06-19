.class public final Le/a/j/e/d$a$d;
.super Le/a/j/e/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/e/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;


# direct methods
.method public constructor <init>(Lcom/truecaller/surveys/data/entities/Question$SingleChoice;)V
    .locals 1

    const-string v0, "question"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/j/e/d$a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/j/e/d$a$d;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/j/e/d$a$d;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/j/e/d$a$d;

    iget-object v0, p0, Le/a/j/e/d$a$d;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    iget-object p1, p1, Le/a/j/e/d$a$d;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 1

    iget-object v0, p0, Le/a/j/e/d$a$d;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SingleChoiceQuestion(question="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/j/e/d$a$d;->a:Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
