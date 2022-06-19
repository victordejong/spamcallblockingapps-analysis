.class public Le/m/f/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/f/a/p;

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/m/f/a/q/a;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Le/m/f/a/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Le/m/f/a/p;

    .line 3
    new-instance v1, Le/m/f/a/q/a;

    invoke-direct {v1}, Le/m/f/a/q/a;-><init>()V

    .line 4
    invoke-direct {v0, v1}, Le/m/f/a/p;-><init>(Le/m/f/a/q/a;)V

    sput-object v0, Le/m/f/a/p;->c:Le/m/f/a/p;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Le/m/f/a/p;->d:Ljava/util/Set;

    const-string v1, "BR"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "CL"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "NI"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Le/m/f/a/q/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/f/a/p;->a:Le/m/f/a/q/a;

    .line 3
    invoke-static {}, Le/m/d/y/n;->P()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/m/f/a/p;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Le/m/f/a/j;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    sget-object v0, Le/m/f/a/j;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Le/m/f/a/c;->b(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    iget-boolean v0, p2, Le/m/f/a/l;->u:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Le/m/f/a/j;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/m/f/a/p;->a:Le/m/f/a/q/a;

    .line 7
    iget-object p2, p2, Le/m/f/a/l;->v:Le/m/f/a/n;

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public b(Le/m/f/a/o;)Z
    .locals 5

    .line 1
    iget v0, p1, Le/m/f/a/o;->b:I

    .line 2
    iget-object v1, p0, Le/m/f/a/p;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-boolean v3, p1, Le/m/f/a/o;->h:Z

    if-eqz v3, :cond_1

    .line 6
    iget v3, p1, Le/m/f/a/o;->j:I

    .line 7
    new-array v3, v3, [C

    const/16 v4, 0x30

    .line 8
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    iget-wide v3, p1, Le/m/f/a/o;->d:J

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-static {v2}, Le/m/f/a/c;->b(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v2, v2, Le/m/f/a/l;->b:Le/m/f/a/n;

    .line 17
    iget-object v2, v2, Le/m/f/a/n;->c:Ljava/util/List;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method
