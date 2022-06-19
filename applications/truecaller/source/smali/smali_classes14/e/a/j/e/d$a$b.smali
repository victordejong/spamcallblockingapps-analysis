.class public final Le/a/j/e/d$a$b;
.super Le/a/j/e/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/e/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/surveys/data/entities/Question$FreeText;Z)V
    .locals 1

    const-string v0, "question"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/j/e/d$a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/j/e/d$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    iput-boolean p2, p0, Le/a/j/e/d$a$b;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/j/e/d$a$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/j/e/d$a$b;

    iget-object v0, p0, Le/a/j/e/d$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    iget-object v1, p1, Le/a/j/e/d$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/j/e/d$a$b;->b:Z

    iget-boolean p1, p1, Le/a/j/e/d$a$b;->b:Z

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
    .locals 2

    iget-object v0, p0, Le/a/j/e/d$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/j/e/d$a$b;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FreeTextQuestion(question="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/j/e/d$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showNameSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/j/e/d$a$b;->b:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
