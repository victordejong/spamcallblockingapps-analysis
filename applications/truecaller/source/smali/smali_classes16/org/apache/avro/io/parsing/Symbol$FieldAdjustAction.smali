.class public Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;
.super Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAdjustAction"
.end annotation


# instance fields
.field public final aliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fname:Ljava/lang/String;

.field public final rindex:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(Lorg/apache/avro/io/parsing/Symbol$1;)V

    .line 2
    iput p1, p0, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->rindex:I

    .line 3
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->fname:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/apache/avro/io/parsing/Symbol$FieldAdjustAction;->aliases:Ljava/util/Set;

    return-void
.end method
