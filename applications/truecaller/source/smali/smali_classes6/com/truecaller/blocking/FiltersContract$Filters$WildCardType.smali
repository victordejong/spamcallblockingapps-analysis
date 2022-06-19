.class public final enum Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/blocking/FiltersContract$Filters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WildCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public static final enum CONTAIN:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public static final enum END:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public static final enum NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public static final enum START:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;


# instance fields
.field public final patternFlags:I

.field public final prefix:Ljava/lang/String;

.field public final prefixQuoted:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;

.field public final suffixQuoted:Ljava/lang/String;

.field public final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 2
    new-instance v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v9, "START"

    const/4 v10, 0x1

    const-string v11, "^"

    const-string v12, ".*"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->START:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 3
    new-instance v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v16, "CONTAIN"

    const/16 v17, 0x2

    const-string v18, ".*"

    const-string v19, ".*"

    const/16 v20, 0x2

    const/16 v21, 0x2

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->CONTAIN:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 4
    new-instance v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const-string v9, "END"

    const/4 v10, 0x3

    const-string v11, ".*"

    const-string v12, "$"

    const/4 v13, 0x3

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->END:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 5
    sput-object v3, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->$VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    const-string p1, "\\Q"

    .line 3
    invoke-static {p3, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefixQuoted:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    const-string p1, "\\E"

    .line 5
    invoke-static {p1, p4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffixQuoted:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    .line 7
    iput p6, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->patternFlags:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    return-object p0
.end method

.method public static valueOfPattern(Ljava/lang/String;)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->values()[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    .line 4
    sget-object v3, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-eq v2, v3, :cond_0

    .line 5
    iget-object v3, v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, p0}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :catch_0
    :cond_1
    sget-object p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    return-object p0
.end method

.method public static valueOfType(I)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;
    .locals 3

    .line 1
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->values()[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    iget v2, v2, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    if-ne v2, p0, :cond_0

    .line 3
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->$VALUES:[Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    invoke-virtual {v0}, [Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    return-object v0
.end method


# virtual methods
.method public compilePattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->patternFlags:I

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->stripPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->formatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    throw v0
.end method

.method public formatPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    return v0
.end method

.method public stripPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    if-eq p0, v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefixQuoted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefixQuoted:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffixQuoted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffixQuoted:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->suffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1
.end method
