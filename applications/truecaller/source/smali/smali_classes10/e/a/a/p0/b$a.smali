.class public final Le/a/a/p0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/p0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Le/a/a/p0/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/p0/b$a;

    invoke-direct {v0}, Le/a/a/p0/b$a;-><init>()V

    sput-object v0, Le/a/a/p0/b$a;->a:Le/a/a/p0/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Le/a/c/g/a;Le/a/c/r/h/f;ZLcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/l5/a/b2$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/l5/a/b4;",
            ">;",
            "Le/a/c/g/a;",
            "Le/a/c/r/h/f;",
            "Z",
            "Lcom/truecaller/insights/categorizer/CategorizerInputType;",
            ")",
            "Le/a/l5/a/b2$b;"
        }
    .end annotation

    const-string v0, "participantList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsParseResponse"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/l5/a/b2;->l:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/b2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/b2$b;-><init>(Le/a/l5/a/b2$a;)V

    .line 2
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 3
    iput-object p1, v0, Le/a/l5/a/b2$b;->a:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 v1, 0x1

    aput-boolean v1, p1, v2

    .line 5
    instance-of p1, p2, Le/a/c/g/a$b;

    if-eqz p1, :cond_0

    const-string p1, "Spam"

    goto :goto_0

    .line 6
    :cond_0
    instance-of p1, p2, Le/a/c/g/a$a;

    if-eqz p1, :cond_2

    const-string p1, "Other"

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 v2, 0x3

    aget-object p2, p2, v2

    invoke-virtual {v0, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 8
    iput-object p1, v0, Le/a/l5/a/b2$b;->b:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, v2

    const/16 p1, 0x5147

    .line 10
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 v2, 0x5

    aget-object p2, p2, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 11
    iput p1, v0, Le/a/l5/a/b2$b;->d:I

    .line 12
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, v2

    .line 13
    instance-of p1, p3, Le/a/c/r/h/f$b;

    if-eqz p1, :cond_1

    .line 14
    check-cast p3, Le/a/c/r/h/f$b;

    .line 15
    iget-object p1, p3, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 16
    invoke-virtual {p1}, Le/a/c/r/h/h;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "UNKNOWN"

    .line 17
    :goto_1
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 p3, 0x4

    aget-object p2, p2, p3

    invoke-virtual {v0, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 18
    iput-object p1, v0, Le/a/l5/a/b2$b;->c:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p3

    const/16 p1, 0x2766

    .line 20
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 p3, 0x6

    aget-object p2, p2, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput p1, v0, Le/a/l5/a/b2$b;->e:I

    .line 22
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p3

    .line 23
    invoke-virtual {p5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ls1/k;

    const-string p3, "MessageType"

    invoke-direct {p2, p3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-static {p2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/b2$b;->b(Ljava/util/Map;)Le/a/l5/a/b2$b;

    .line 26
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p2, 0x7

    aget-object p1, p1, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 27
    iput-boolean p4, v0, Le/a/l5/a/b2$b;->f:Z

    .line 28
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v1, p1, p2

    return-object v0

    .line 29
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
