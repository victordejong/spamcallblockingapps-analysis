.class public final Le/a/c/r/j/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/r/j/o$a;
    }
.end annotation


# static fields
.field public static final b:Le/a/c/r/j/o;

.field public static final c:Le/a/c/r/j/o$a;


# instance fields
.field public final a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/c/r/j/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/r/j/o$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/c/r/j/o;->c:Le/a/c/r/j/o$a;

    .line 1
    new-instance v0, Le/a/c/r/j/o;

    invoke-direct {v0, v1}, Le/a/c/r/j/o;-><init>(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;)V

    sput-object v0, Le/a/c/r/j/o;->b:Le/a/c/r/j/o;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/o;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/o;

    iget-object v0, p0, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    iget-object p1, p1, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

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

    iget-object v0, p0, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "InfoCardActionState(givenFeedback="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
