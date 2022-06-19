.class public Le/k/a/b/a0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/o;
.implements Le/k/a/b/a0/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/b/a0/e$a;,
        Le/k/a/b/a0/e$c;,
        Le/k/a/b/a0/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/k/a/b/o;",
        "Le/k/a/b/a0/f<",
        "Le/k/a/b/a0/e;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Le/k/a/b/w/i;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public _arrayIndenter:Le/k/a/b/a0/e$b;

.field public transient _nesting:I

.field public _objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

.field public _objectIndenter:Le/k/a/b/a0/e$b;

.field public final _rootSeparator:Le/k/a/b/p;

.field public _separators:Le/k/a/b/a0/m;

.field public _spacesInObjectEntries:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/b/w/i;

    const-string v1, " "

    invoke-direct {v0, v1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/k/a/b/a0/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Le/k/a/b/w/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/a0/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Le/k/a/b/w/i;

    invoke-direct {p0, v0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/p;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/a0/e;)V
    .locals 1

    .line 9
    iget-object v0, p1, Le/k/a/b/a0/e;->_rootSeparator:Le/k/a/b/p;

    invoke-direct {p0, p1, v0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;Le/k/a/b/p;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/a0/e;Le/k/a/b/p;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Le/k/a/b/a0/e$a;->b:Le/k/a/b/a0/e$a;

    iput-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    .line 12
    sget-object v0, Le/k/a/b/a0/d;->f:Le/k/a/b/a0/d;

    iput-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    .line 14
    iget-object v0, p1, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    iput-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    .line 15
    iget-object v0, p1, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    iput-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    .line 16
    iget-boolean v0, p1, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    iput-boolean v0, p0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    .line 17
    iget v0, p1, Le/k/a/b/a0/e;->_nesting:I

    iput v0, p0, Le/k/a/b/a0/e;->_nesting:I

    .line 18
    iget-object v0, p1, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    iput-object v0, p0, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    .line 19
    iget-object p1, p1, Le/k/a/b/a0/e;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    iput-object p1, p0, Le/k/a/b/a0/e;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Le/k/a/b/a0/e;->_rootSeparator:Le/k/a/b/p;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/p;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Le/k/a/b/a0/e$a;->b:Le/k/a/b/a0/e$a;

    iput-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    .line 5
    sget-object v0, Le/k/a/b/a0/d;->f:Le/k/a/b/a0/d;

    iput-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    .line 7
    iput-object p1, p0, Le/k/a/b/a0/e;->_rootSeparator:Le/k/a/b/p;

    .line 8
    sget-object p1, Le/k/a/b/o;->G:Le/k/a/b/a0/m;

    invoke-virtual {p0, p1}, Le/k/a/b/a0/e;->withSeparators(Le/k/a/b/a0/m;)Le/k/a/b/a0/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/b/w/i;

    invoke-direct {v0, p1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/p;)V

    return-void
.end method


# virtual methods
.method public _withSpaces(Z)Le/k/a/b/a0/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0, p0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;)V

    .line 3
    iput-boolean p1, v0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    return-object v0
.end method

.method public beforeArrayValues(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    iget v1, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {v0, p1, v1}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    return-void
.end method

.method public beforeObjectEntries(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    iget v1, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {v0, p1, v1}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    return-void
.end method

.method public createInstance()Le/k/a/b/a0/e;
    .locals 3

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/k/a/b/a0/e;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0, p0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed `createInstance()`: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not override method; it has to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/a0/e;->createInstance()Le/k/a/b/a0/e;

    move-result-object v0

    return-object v0
.end method

.method public indentArraysWith(Le/k/a/b/a0/e$b;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/a0/e$c;->a:Le/k/a/b/a0/e$c;

    :cond_0
    iput-object p1, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    return-void
.end method

.method public indentObjectsWith(Le/k/a/b/a0/e$b;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/a0/e$c;->a:Le/k/a/b/a0/e$c;

    :cond_0
    iput-object p1, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    return-void
.end method

.method public withArrayIndenter(Le/k/a/b/a0/e$b;)Le/k/a/b/a0/e;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/a0/e$c;->a:Le/k/a/b/a0/e$c;

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    if-ne v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0, p0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;)V

    .line 4
    iput-object p1, v0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    return-object v0
.end method

.method public withObjectIndenter(Le/k/a/b/a0/e$b;)Le/k/a/b/a0/e;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/b/a0/e$c;->a:Le/k/a/b/a0/e$c;

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    if-ne v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0, p0}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;)V

    .line 4
    iput-object p1, v0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    return-object v0
.end method

.method public withRootSeparator(Le/k/a/b/p;)Le/k/a/b/a0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_rootSeparator:Le/k/a/b/p;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0, p0, p1}, Le/k/a/b/a0/e;-><init>(Le/k/a/b/a0/e;Le/k/a/b/p;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public withRootSeparator(Ljava/lang/String;)Le/k/a/b/a0/e;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le/k/a/b/w/i;

    invoke-direct {v0, p1}, Le/k/a/b/w/i;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Le/k/a/b/a0/e;->withRootSeparator(Le/k/a/b/p;)Le/k/a/b/a0/e;

    move-result-object p1

    return-object p1
.end method

.method public withSeparators(Le/k/a/b/a0/m;)Le/k/a/b/a0/e;
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, " : "

    .line 3
    iput-object p1, p0, Le/k/a/b/a0/e;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    return-object p0
.end method

.method public withSpacesInObjectEntries()Le/k/a/b/a0/e;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/a0/e;->_withSpaces(Z)Le/k/a/b/a0/e;

    move-result-object v0

    return-object v0
.end method

.method public withoutSpacesInObjectEntries()Le/k/a/b/a0/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/a0/e;->_withSpaces(Z)Le/k/a/b/a0/e;

    move-result-object v0

    return-object v0
.end method

.method public writeArrayValueSeparator(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    .line 4
    iget-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    iget v1, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {v0, p1, v1}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    return-void
.end method

.method public writeEndArray(Le/k/a/b/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    invoke-interface {v0}, Le/k/a/b/a0/e$b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/k/a/b/a0/e;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/k/a/b/a0/e;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    .line 3
    iget-object p2, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    iget v0, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {p2, p1, v0}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    .line 4
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    :goto_0
    const/16 p2, 0x5d

    .line 5
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeEndObject(Le/k/a/b/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    invoke-interface {v0}, Le/k/a/b/a0/e$b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/k/a/b/a0/e;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/k/a/b/a0/e;->_nesting:I

    :cond_0
    if-lez p2, :cond_1

    .line 3
    iget-object p2, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    iget v0, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {p2, p1, v0}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    .line 4
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    :goto_0
    const/16 p2, 0x7d

    .line 5
    invoke-virtual {p1, p2}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeObjectEntrySeparator(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2c

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    .line 4
    iget-object v0, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    iget v1, p0, Le/k/a/b/a0/e;->_nesting:I

    invoke-interface {v0, p1, v1}, Le/k/a/b/a0/e$b;->i(Le/k/a/b/g;I)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/a0/e;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/b/a0/e;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/k/a/b/g;->s1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/a0/e;->_separators:Le/k/a/b/a0/m;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 5
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    :goto_0
    return-void
.end method

.method public writeRootValueSeparator(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_rootSeparator:Le/k/a/b/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/b/g;->n1(Le/k/a/b/p;)V

    :cond_0
    return-void
.end method

.method public writeStartArray(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/a0/e;->_arrayIndenter:Le/k/a/b/a0/e$b;

    invoke-interface {v0}, Le/k/a/b/a0/e$b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/k/a/b/a0/e;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/a0/e;->_nesting:I

    :cond_0
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    return-void
.end method

.method public writeStartObject(Le/k/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/b/g;->m1(C)V

    .line 2
    iget-object p1, p0, Le/k/a/b/a0/e;->_objectIndenter:Le/k/a/b/a0/e$b;

    invoke-interface {p1}, Le/k/a/b/a0/e$b;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Le/k/a/b/a0/e;->_nesting:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/k/a/b/a0/e;->_nesting:I

    :cond_0
    return-void
.end method
