.class public final Le/a/r5/s0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/whoviewedme/ProfileViewSource;


# direct methods
.method public constructor <init>(Lcom/truecaller/whoviewedme/ProfileViewSource;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/s0/b;->a:Lcom/truecaller/whoviewedme/ProfileViewSource;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 5

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    sget-object v1, Le/a/l5/a/u1;->d:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/u1$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/u1$b;-><init>(Le/a/l5/a/u1$a;)V

    .line 3
    iget-object v2, p0, Le/a/r5/s0/b;->a:Lcom/truecaller/whoviewedme/ProfileViewSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v2, v1, Le/a/l5/a/u1$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 7
    invoke-virtual {v1}, Le/a/l5/a/u1$b;->a()Le/a/l5/a/u1;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method
