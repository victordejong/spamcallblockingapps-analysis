.class public Le/a/h0/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "+"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->valueOfType(I)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-result-object p2

    .line 3
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    sget-object v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->START:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-ne p2, v2, :cond_2

    .line 5
    invoke-virtual {p2, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->stripPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v2

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Le/m/f/a/j;->o(Ljava/lang/String;)I

    move-result v2

    .line 10
    sget-object v3, Le/a/b0/q/c0;->a:Ljava/util/List;

    .line 11
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v2}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    sget-object v4, Le/a/b0/q/c0;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "00"

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v4, "0"

    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_0
    invoke-virtual {p2, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->formatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 21
    :goto_1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 22
    :cond_2
    :goto_2
    iput-object v1, p0, Le/a/h0/k$b;->a:Ljava/util/regex/Pattern;

    return-void
.end method
