.class public Le/m/f/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/f/a/j$a;,
        Le/m/f/a/j$e;,
        Le/m/f/a/j$b;,
        Le/m/f/a/j$d;,
        Le/m/f/a/j$c;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static D:Le/m/f/a/j;

.field public static final h:Ljava/util/logging/Logger;

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Le/m/f/a/d;

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

.field public final c:Le/m/f/a/q/a;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/f/a/q/b;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    const-class v0, Le/m/f/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v3, "9"

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->i:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x56

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x34

    .line 11
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x37

    .line 14
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x30

    .line 20
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x31

    .line 21
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    .line 22
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x33

    .line 23
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x35

    .line 25
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x38

    .line 28
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x39

    .line 29
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    const/16 v11, 0x41

    .line 31
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x42

    .line 32
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x43

    .line 33
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x44

    .line 34
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x45

    .line 35
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x46

    .line 36
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x47

    .line 37
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x48

    .line 38
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x49

    .line 39
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4a

    .line 40
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4b

    .line 41
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4c

    .line 42
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4d

    .line 43
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4e

    .line 44
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    .line 45
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 46
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 47
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 48
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 49
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 50
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 51
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 53
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 54
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 55
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 56
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->k:Ljava/util/Map;

    .line 58
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 60
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 61
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le/m/f/a/j;->l:Ljava/util/Map;

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v3, 0x2b

    .line 64
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2a

    .line 65
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x23

    .line 66
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le/m/f/a/j;->j:Ljava/util/Map;

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x2d

    .line 73
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0d

    .line 74
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2010

    .line 75
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2011

    .line 76
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2012

    .line 77
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2013

    .line 78
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2014

    .line 79
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2015

    .line 80
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2212

    .line 81
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 82
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0f

    .line 83
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 84
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3000

    .line 85
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2060

    .line 86
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 87
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0e

    .line 88
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->m:Ljava/util/Map;

    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Le/m/f/a/j;->k:Ljava/util/Map;

    .line 92
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[, \\[\\]]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->n:Ljava/lang/String;

    const-string v1, "[+\uff0b]+"

    .line 95
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->o:Ljava/util/regex/Pattern;

    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    .line 96
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->p:Ljava/util/regex/Pattern;

    const-string v1, "(\\p{Nd})"

    .line 97
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->q:Ljava/util/regex/Pattern;

    const-string v1, "[+\uff0b\\p{Nd}]"

    .line 98
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->r:Ljava/util/regex/Pattern;

    const-string v1, "[\\\\/] *x"

    .line 99
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->s:Ljava/util/regex/Pattern;

    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    .line 100
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->t:Ljava/util/regex/Pattern;

    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    .line 101
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->u:Ljava/util/regex/Pattern;

    const-string v1, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    const-string v2, "\\p{Nd}"

    const-string v3, "]*"

    .line 102
    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->v:Ljava/lang/String;

    const/4 v1, 0x1

    .line 103
    invoke-static {v1}, Le/m/f/a/j;->d(Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/m/f/a/j;->w:Ljava/lang/String;

    const/4 v2, 0x0

    .line 104
    invoke-static {v2}, Le/m/f/a/j;->d(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Le/m/f/a/j;->x:Ljava/lang/String;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Le/m/f/a/j;->y:Ljava/util/regex/Pattern;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->z:Ljava/util/regex/Pattern;

    const-string v0, "(\\D+)"

    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->A:Ljava/util/regex/Pattern;

    const-string v0, "(\\$\\d)"

    .line 110
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->B:Ljava/util/regex/Pattern;

    const-string v0, "\\(?\\$1\\)?"

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/j;->C:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 112
    sput-object v0, Le/m/f/a/j;->D:Le/m/f/a/j;

    return-void
.end method

.method public constructor <init>(Le/m/f/a/d;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/f/a/d;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/f/a/q/a;

    invoke-direct {v0}, Le/m/f/a/q/a;-><init>()V

    .line 3
    iput-object v0, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Le/m/f/a/j;->d:Ljava/util/Set;

    .line 5
    new-instance v0, Le/m/f/a/q/b;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Le/m/f/a/q/b;-><init>(I)V

    iput-object v0, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Le/m/f/a/j;->f:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/m/f/a/j;->g:Ljava/util/Set;

    .line 8
    iput-object p1, p0, Le/m/f/a/j;->a:Le/m/f/a/d;

    .line 9
    iput-object p2, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "001"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Le/m/f/a/j;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Le/m/f/a/j;->f:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Le/m/f/a/j;->f:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    sget-object p1, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-object p1, p0, Le/m/f/a/j;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static J(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Le/m/f/a/j;->z:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static N(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    sget-object v0, Le/m/f/a/j;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v2, Le/m/f/a/j;->l:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Le/m/f/a/j;->Q(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 5
    invoke-static {p0, v1}, Le/m/f/a/j;->O(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public static O(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static P(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/m/f/a/j;->O(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Le/m/f/a/o;)Le/m/f/a/o;
    .locals 3

    .line 1
    new-instance v0, Le/m/f/a/o;

    invoke-direct {v0}, Le/m/f/a/o;-><init>()V

    .line 2
    iget v1, p0, Le/m/f/a/o;->b:I

    .line 3
    invoke-virtual {v0, v1}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    .line 4
    iget-wide v1, p0, Le/m/f/a/o;->d:J

    .line 5
    invoke-virtual {v0, v1, v2}, Le/m/f/a/o;->g(J)Le/m/f/a/o;

    .line 6
    iget-object v1, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Le/m/f/a/o;->e(Ljava/lang/String;)Le/m/f/a/o;

    .line 10
    :cond_0
    iget-boolean v1, p0, Le/m/f/a/o;->h:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Le/m/f/a/o;->f(Z)Le/m/f/a/o;

    .line 12
    iget p0, p0, Le/m/f/a/o;->j:I

    .line 13
    invoke-virtual {v0, p0}, Le/m/f/a/o;->h(I)Le/m/f/a/o;

    :cond_1
    return-object v0
.end method

.method public static d(Z)Ljava/lang/String;
    .locals 8

    const-string v0, ";ext="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ \u00a0\\t,]*"

    const-string v3, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    const-string v4, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 2
    invoke-static {v2, v3, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    invoke-static {v1}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    .line 4
    invoke-static {v2, v5, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x9

    .line 5
    invoke-static {v5}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[- ]+"

    .line 6
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "|"

    .line 7
    invoke-static {v0, v7, v3, v7, v2}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v7, v6}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "[ \u00a0\\t]*"

    const-string v2, "(?:,{2}|;)"

    .line 8
    invoke-static {p0, v2, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xf

    .line 9
    invoke-static {v3}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?:,)+"

    .line 10
    invoke-static {p0, v3, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 11
    invoke-static {v5}, Le/m/f/a/j;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v0, v7, v2, v7, p0}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static e(Le/m/f/a/n;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/f/a/n;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p0, p0, Le/m/f/a/n;->c:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public static f(I)Ljava/lang/String;
    .locals 2

    const-string v0, "(\\p{Nd}{1,"

    const-string v1, "})"

    .line 1
    invoke-static {v0, p0, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget-object v0, Le/m/f/a/j;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 4
    sget-object v0, Le/m/f/a/j;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 7
    :cond_0
    sget-object v0, Le/m/f/a/j;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Le/m/f/a/j;->C:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized q()Le/m/f/a/j;
    .locals 4

    const-class v0, Le/m/f/a/j;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/m/f/a/j;->D:Le/m/f/a/j;

    if-nez v1, :cond_1

    .line 2
    sget-object v1, Le/m/f/a/c;->a:Le/m/f/a/b;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Le/m/f/a/d;

    invoke-direct {v2, v1}, Le/m/f/a/d;-><init>(Le/m/f/a/b;)V

    .line 4
    new-instance v1, Le/m/f/a/j;

    .line 5
    invoke-static {}, Le/m/d/y/n;->P()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le/m/f/a/j;-><init>(Le/m/f/a/d;Ljava/util/Map;)V

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sput-object v1, Le/m/f/a/j;->D:Le/m/f/a/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "metadataLoader could not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v1, Le/m/f/a/j;->D:Le/m/f/a/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final A(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final B(Le/m/f/a/o;Le/m/f/a/o;)Z
    .locals 2

    .line 1
    iget-wide v0, p1, Le/m/f/a/o;->d:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-wide v0, p2, Le/m/f/a/o;->d:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public C(Le/m/f/a/o;Le/m/f/a/o;)Le/m/f/a/j$b;
    .locals 5

    .line 1
    sget-object v0, Le/m/f/a/j$b;->c:Le/m/f/a/j$b;

    sget-object v1, Le/m/f/a/j$b;->b:Le/m/f/a/j$b;

    invoke-static {p1}, Le/m/f/a/j;->c(Le/m/f/a/o;)Le/m/f/a/o;

    move-result-object p1

    .line 2
    invoke-static {p2}, Le/m/f/a/j;->c(Le/m/f/a/o;)Le/m/f/a/o;

    move-result-object p2

    .line 3
    iget-boolean v2, p1, Le/m/f/a/o;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Le/m/f/a/o;->e:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    iget-object v3, p2, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 6
    :cond_0
    iget v2, p1, Le/m/f/a/o;->b:I

    .line 7
    iget v3, p2, Le/m/f/a/o;->b:I

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Le/m/f/a/o;->b(Le/m/f/a/o;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    sget-object p1, Le/m/f/a/j$b;->e:Le/m/f/a/j$b;

    return-object p1

    :cond_1
    if-ne v2, v3, :cond_2

    .line 10
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->B(Le/m/f/a/o;Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    return-object v1

    .line 11
    :cond_3
    invoke-virtual {p1, v3}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    .line 12
    invoke-virtual {p1, p2}, Le/m/f/a/o;->b(Le/m/f/a/o;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    sget-object p1, Le/m/f/a/j$b;->d:Le/m/f/a/j$b;

    return-object p1

    .line 14
    :cond_4
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->B(Le/m/f/a/o;Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    return-object v1
.end method

.method public D(Le/m/f/a/o;Ljava/lang/CharSequence;)Le/m/f/a/j$b;
    .locals 7

    const-string v0, "ZZ"

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, v0}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Le/m/f/a/j;->C(Le/m/f/a/o;Le/m/f/a/o;)Le/m/f/a/j$b;

    move-result-object p1
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 3
    iget-object v1, v1, Le/m/f/a/e;->a:Le/m/f/a/e$a;

    .line 4
    sget-object v2, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p1, Le/m/f/a/o;->b:I

    .line 6
    invoke-virtual {p0, v1}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p2, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->C(Le/m/f/a/o;Le/m/f/a/o;)Le/m/f/a/j$b;

    move-result-object p1

    .line 10
    sget-object p2, Le/m/f/a/j$b;->e:Le/m/f/a/j$b;

    if-ne p1, p2, :cond_0

    .line 11
    sget-object p1, Le/m/f/a/j$b;->d:Le/m/f/a/j$b;

    :cond_0
    return-object p1

    .line 12
    :cond_1
    new-instance v6, Le/m/f/a/o;

    invoke-direct {v6}, Le/m/f/a/o;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    .line 13
    invoke-virtual/range {v0 .. v5}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    .line 14
    invoke-virtual {p0, p1, v6}, Le/m/f/a/j;->C(Le/m/f/a/o;Le/m/f/a/o;)Le/m/f/a/j$b;

    move-result-object p1
    :try_end_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 15
    :catch_1
    :cond_2
    sget-object p1, Le/m/f/a/j$b;->a:Le/m/f/a/j$b;

    return-object p1
.end method

.method public E(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/m/f/a/j$b;
    .locals 9

    .line 1
    sget-object v0, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    const-string v1, "ZZ"

    :try_start_0
    invoke-virtual {p0, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v2

    .line 2
    invoke-virtual {p0, v2, p2}, Le/m/f/a/j;->D(Le/m/f/a/o;Ljava/lang/CharSequence;)Le/m/f/a/j$b;

    move-result-object p1
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 3
    iget-object v2, v2, Le/m/f/a/e;->a:Le/m/f/a/e$a;

    if-ne v2, v0, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p2, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1, p1}, Le/m/f/a/j;->D(Le/m/f/a/o;Ljava/lang/CharSequence;)Le/m/f/a/j$b;

    move-result-object p1
    :try_end_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v1

    .line 6
    iget-object v1, v1, Le/m/f/a/e;->a:Le/m/f/a/e$a;

    if-ne v1, v0, :cond_0

    .line 7
    :try_start_2
    new-instance v0, Le/m/f/a/o;

    invoke-direct {v0}, Le/m/f/a/o;-><init>()V

    .line 8
    new-instance v8, Le/m/f/a/o;

    invoke-direct {v8}, Le/m/f/a/o;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, v0

    .line 9
    invoke-virtual/range {v2 .. v7}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, v8

    .line 10
    invoke-virtual/range {v1 .. v6}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    .line 11
    invoke-virtual {p0, v0, v8}, Le/m/f/a/j;->C(Le/m/f/a/o;Le/m/f/a/o;)Le/m/f/a/j$b;

    move-result-object p1
    :try_end_2
    .catch Le/m/f/a/e; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 12
    :catch_2
    :cond_0
    sget-object p1, Le/m/f/a/j$b;->a:Le/m/f/a/j$b;

    return-object p1
.end method

.method public F(Ljava/lang/String;Le/m/f/a/n;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-object v1, p2, Le/m/f/a/n;->c:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    invoke-virtual {v0, p1, p2, v3}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result p1

    return p1
.end method

.method public G(Le/m/f/a/o;)Z
    .locals 3

    .line 1
    sget-object v0, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    .line 2
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget p1, p1, Le/m/f/a/o;->b:I

    .line 4
    invoke-virtual {p0, p1}, Le/m/f/a/j;->A(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object p1, Le/m/f/a/j$e;->c:Le/m/f/a/j$e;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Le/m/f/a/j;->V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;

    move-result-object p1

    .line 9
    :goto_0
    sget-object v0, Le/m/f/a/j$e;->a:Le/m/f/a/j$e;

    if-eq p1, v0, :cond_2

    sget-object v0, Le/m/f/a/j$e;->b:Le/m/f/a/j$e;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public H(Le/m/f/a/o;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget v0, p1, Le/m/f/a/o;->b:I

    .line 2
    invoke-virtual {p0, v0, p2}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "001"

    .line 3
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Le/m/f/a/j;->p(Ljava/lang/String;)I

    move-result p2

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v1}, Le/m/f/a/j;->x(Ljava/lang/String;Le/m/f/a/l;)Le/m/f/a/j$d;

    move-result-object p1

    sget-object p2, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    if-eq p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public final I(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/m/f/a/j;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final K(Le/m/f/a/o;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Le/m/f/a/o;->e:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    sget-object v0, Le/m/f/a/j$c;->d:Le/m/f/a/j$c;

    if-ne p3, v0, :cond_0

    const-string p2, ";ext="

    .line 5
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean p3, p2, Le/m/f/a/l;->T:Z

    if-eqz p3, :cond_1

    .line 9
    iget-object p2, p2, Le/m/f/a/l;->U:Ljava/lang/String;

    .line 10
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object p1, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, " ext. "

    .line 13
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public L(Ljava/lang/CharSequence;Le/m/f/a/l;Ljava/lang/StringBuilder;ZLe/m/f/a/o;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/f/a/e;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p2, Le/m/f/a/l;->O:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "NonMatch"

    .line 4
    :goto_0
    sget-object v2, Le/m/f/a/o$a;->d:Le/m/f/a/o$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    sget-object v3, Le/m/f/a/j;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Le/m/f/a/j;->N(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 9
    sget-object p1, Le/m/f/a/o$a;->a:Le/m/f/a/o$a;

    goto :goto_4

    .line 10
    :cond_3
    iget-object v3, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    invoke-virtual {v3, p1}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 11
    invoke-static {v0}, Le/m/f/a/j;->N(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 15
    sget-object v3, Le/m/f/a/j;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 17
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/m/f/a/j;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v1

    :goto_2
    if-eqz v5, :cond_6

    .line 20
    sget-object p1, Le/m/f/a/o$a;->b:Le/m/f/a/o$a;

    goto :goto_4

    :cond_6
    :goto_3
    move-object p1, v2

    :goto_4
    if-eqz p4, :cond_7

    .line 21
    invoke-virtual {p5, p1}, Le/m/f/a/o;->d(Le/m/f/a/o$a;)Le/m/f/a/o;

    :cond_7
    if-eq p1, v2, :cond_a

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_9

    .line 23
    invoke-virtual {p0, v0, p3}, Le/m/f/a/j;->g(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p5, p1}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    return p1

    .line 25
    :cond_8
    new-instance p1, Le/m/f/a/e;

    sget-object p2, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    const-string p3, "Country calling code supplied was not recognised."

    invoke-direct {p1, p2, p3}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_9
    new-instance p1, Le/m/f/a/e;

    sget-object p2, Le/m/f/a/e$a;->c:Le/m/f/a/e$a;

    const-string p3, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {p1, p2, p3}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw p1

    :cond_a
    if-eqz p2, :cond_e

    .line 27
    iget p1, p2, Le/m/f/a/l;->N:I

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v2, p2, Le/m/f/a/l;->b:Le/m/f/a/n;

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v4, p2, v3}, Le/m/f/a/j;->M(Ljava/lang/StringBuilder;Le/m/f/a/l;Ljava/lang/StringBuilder;)Z

    .line 35
    iget-object v3, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    invoke-virtual {v3, v0, v2, v1}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    .line 36
    invoke-virtual {v3, v4, v2, v1}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result v2

    if-nez v2, :cond_c

    .line 37
    :cond_b
    sget-object v2, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-virtual {p0, v0, p2, v2}, Le/m/f/a/j;->V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;

    move-result-object p2

    .line 38
    sget-object v0, Le/m/f/a/j$e;->f:Le/m/f/a/j$e;

    if-ne p2, v0, :cond_e

    .line 39
    :cond_c
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_d

    .line 40
    sget-object p2, Le/m/f/a/o$a;->c:Le/m/f/a/o$a;

    invoke-virtual {p5, p2}, Le/m/f/a/o;->d(Le/m/f/a/o$a;)Le/m/f/a/o;

    .line 41
    :cond_d
    invoke-virtual {p5, p1}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    return p1

    .line 42
    :cond_e
    invoke-virtual {p5, v1}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    return v1
.end method

.method public M(Ljava/lang/StringBuilder;Le/m/f/a/l;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    iget-object v1, p2, Le/m/f/a/l;->W:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    invoke-virtual {v3, v1}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6
    iget-object v3, p2, Le/m/f/a/l;->b:Le/m/f/a/n;

    .line 7
    iget-object v4, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    invoke-virtual {v4, p1, v3, v2}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result v4

    .line 8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    .line 9
    iget-object p2, p2, Le/m/f/a/l;->Y:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 14
    iget-object p2, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    .line 15
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v2}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    :cond_2
    if-eqz p3, :cond_3

    if-le v5, v6, :cond_3

    .line 16
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 18
    iget-object p2, p0, Le/m/f/a/j;->c:Le/m/f/a/q/a;

    .line 19
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2, v0, v3, v2}, Le/m/f/a/q/a;->a(Ljava/lang/CharSequence;Le/m/f/a/n;Z)Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    :cond_5
    if-eqz p3, :cond_6

    if-lez v5, :cond_6

    .line 21
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 22
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v6

    :cond_7
    :goto_1
    return v2
.end method

.method public R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/f/a/e;
        }
    .end annotation

    .line 1
    new-instance v6, Le/m/f/a/o;

    invoke-direct {v6}, Le/m/f/a/o;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    return-object v6
.end method

.method public final S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/f/a/e;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 1
    sget-object v10, Le/m/f/a/e$a;->d:Le/m/f/a/e$a;

    sget-object v11, Le/m/f/a/e$a;->e:Le/m/f/a/e$a;

    sget-object v0, Le/m/f/a/e$a;->b:Le/m/f/a/e$a;

    sget-object v12, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    if-eqz p1, :cond_1c

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0xfa

    if-gt v1, v2, :cond_1b

    .line 3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";phone-context="

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v14, 0x0

    if-ltz v2, :cond_3

    add-int/lit8 v3, v2, 0xf

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    const/16 v4, 0x3b

    .line 8
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v3, "tel:"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :cond_2
    move v3, v14

    .line 12
    :goto_1
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {v1}, Le/m/f/a/j;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v2, ";isub="

    .line 14
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 15
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-static {v13}, Le/m/f/a/j;->J(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v15, 0x1

    if-eqz p4, :cond_8

    .line 17
    invoke-virtual {v7, v8}, Le/m/f/a/j;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Le/m/f/a/j;->o:Ljava/util/regex/Pattern;

    .line 19
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v14

    goto :goto_3

    :cond_6
    move v0, v15

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    .line 20
    :cond_7
    new-instance v0, Le/m/f/a/e;

    const-string v1, "Missing or invalid default region."

    invoke-direct {v0, v12, v1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 21
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-boolean v15, v9, Le/m/f/a/o;->k:Z

    .line 23
    iput-object v1, v9, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 24
    :cond_9
    sget-object v0, Le/m/f/a/j;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v13, v14, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/m/f/a/j;->J(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    move v2, v15

    :goto_5
    if-gt v2, v1, :cond_b

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v13, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const-string v1, ""

    .line 30
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 31
    invoke-virtual {v9, v1}, Le/m/f/a/o;->e(Ljava/lang/String;)Le/m/f/a/o;

    .line 32
    :cond_c
    invoke-virtual {v7, v8}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v6

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move-object v4, v5

    move-object/from16 p1, v5

    move/from16 v5, p3

    move-object/from16 p4, v6

    move-object/from16 v6, p5

    .line 34
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Le/m/f/a/j;->L(Ljava/lang/CharSequence;Le/m/f/a/l;Ljava/lang/StringBuilder;ZLe/m/f/a/o;)I

    move-result v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 35
    sget-object v0, Le/m/f/a/j;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 36
    iget-object v2, v1, Le/m/f/a/e;->a:Le/m/f/a/e$a;

    if-ne v2, v12, :cond_19

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 38
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Le/m/f/a/j;->L(Ljava/lang/CharSequence;Le/m/f/a/l;Ljava/lang/StringBuilder;ZLe/m/f/a/o;)I

    move-result v0

    if-eqz v0, :cond_18

    :goto_7
    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {v7, v0}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 41
    invoke-virtual {v7, v0, v1}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object v6

    goto :goto_8

    :cond_d
    move-object/from16 v6, p4

    :goto_8
    move-object/from16 v1, p1

    goto :goto_a

    .line 42
    :cond_e
    invoke-static {v13}, Le/m/f/a/j;->N(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_f

    move-object/from16 v2, p4

    .line 43
    iget v0, v2, Le/m/f/a/l;->N:I

    .line 44
    invoke-virtual {v9, v0}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    goto :goto_9

    :cond_f
    move-object/from16 v2, p4

    if-eqz p3, :cond_10

    .line 45
    invoke-virtual/range {p5 .. p5}, Le/m/f/a/o;->a()Le/m/f/a/o;

    :cond_10
    :goto_9
    move-object v6, v2

    .line 46
    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v2, "The string supplied is too short to be a phone number."

    const/4 v3, 0x2

    if-lt v0, v3, :cond_17

    if-eqz v6, :cond_11

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v7, v5, v6, v0}, Le/m/f/a/j;->M(Ljava/lang/StringBuilder;Le/m/f/a/l;Ljava/lang/StringBuilder;)Z

    .line 50
    sget-object v4, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-virtual {v7, v5, v6, v4}, Le/m/f/a/j;->V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;

    move-result-object v4

    .line 51
    sget-object v6, Le/m/f/a/j$e;->d:Le/m/f/a/j$e;

    if-eq v4, v6, :cond_11

    sget-object v6, Le/m/f/a/j$e;->b:Le/m/f/a/j$e;

    if-eq v4, v6, :cond_11

    sget-object v6, Le/m/f/a/j$e;->e:Le/m/f/a/j$e;

    if-eq v4, v6, :cond_11

    if-eqz p3, :cond_12

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-boolean v15, v9, Le/m/f/a/o;->o:Z

    .line 57
    iput-object v0, v9, Le/m/f/a/o;->p:Ljava/lang/String;

    goto :goto_b

    :cond_11
    move-object v5, v1

    .line 58
    :cond_12
    :goto_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v3, :cond_16

    const/16 v1, 0x11

    if-gt v0, v1, :cond_15

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v15, :cond_14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_14

    .line 60
    invoke-virtual {v9, v15}, Le/m/f/a/o;->f(Z)Le/m/f/a/o;

    move v0, v15

    .line 61
    :goto_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v15

    if-ge v0, v2, :cond_13

    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_13
    if-eq v0, v15, :cond_14

    .line 63
    invoke-virtual {v9, v0}, Le/m/f/a/o;->h(I)Le/m/f/a/o;

    .line 64
    :cond_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Le/m/f/a/o;->g(J)Le/m/f/a/o;

    return-void

    .line 65
    :cond_15
    new-instance v0, Le/m/f/a/e;

    const-string v1, "The string supplied is too long to be a phone number."

    invoke-direct {v0, v11, v1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_16
    new-instance v0, Le/m/f/a/e;

    invoke-direct {v0, v10, v2}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_17
    new-instance v0, Le/m/f/a/e;

    invoke-direct {v0, v10, v2}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_18
    new-instance v0, Le/m/f/a/e;

    const-string v1, "Could not interpret numbers after plus-sign."

    invoke-direct {v0, v12, v1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_19
    new-instance v0, Le/m/f/a/e;

    .line 70
    iget-object v2, v1, Le/m/f/a/e;->a:Le/m/f/a/e$a;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1a
    new-instance v1, Le/m/f/a/e;

    const-string v2, "The string supplied did not seem to be a phone number."

    invoke-direct {v1, v0, v2}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1b
    new-instance v0, Le/m/f/a/e;

    const-string v1, "The string supplied was too long to parse."

    invoke-direct {v0, v11, v1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1c
    new-instance v1, Le/m/f/a/e;

    const-string v2, "The phone number supplied was null."

    invoke-direct {v1, v0, v2}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v1
.end method

.method public final T(ILe/m/f/a/j$c;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/16 v0, 0x2b

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    return-void

    :cond_0
    const-string p2, "-"

    .line 2
    invoke-virtual {p3, v1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "tel:"

    .line 3
    invoke-virtual {p1, v1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string p2, " "

    .line 4
    invoke-virtual {p3, v1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    .line 5
    :cond_2
    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final U(Ljava/lang/CharSequence;Le/m/f/a/l;)Le/m/f/a/j$e;
    .locals 1

    .line 1
    sget-object v0, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-virtual {p0, p1, p2, v0}, Le/m/f/a/j;->V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;

    move-result-object p1

    return-object p1
.end method

.method public final V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;
    .locals 6

    .line 1
    sget-object v0, Le/m/f/a/j$e;->a:Le/m/f/a/j$e;

    sget-object v1, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    sget-object v2, Le/m/f/a/j$e;->e:Le/m/f/a/j$e;

    invoke-virtual {p0, p2, p3}, Le/m/f/a/j;->v(Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/n;

    move-result-object v3

    .line 2
    iget-object v4, v3, Le/m/f/a/n;->c:Ljava/util/List;

    .line 3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p2, Le/m/f/a/l;->b:Le/m/f/a/n;

    .line 5
    iget-object v4, v4, Le/m/f/a/n;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v4, v3, Le/m/f/a/n;->c:Ljava/util/List;

    .line 6
    :goto_0
    iget-object v3, v3, Le/m/f/a/n;->d:Ljava/util/List;

    .line 7
    sget-object v5, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-ne p3, v5, :cond_4

    .line 8
    sget-object p3, Le/m/f/a/j$d;->a:Le/m/f/a/j$d;

    invoke-virtual {p0, p2, p3}, Le/m/f/a/j;->v(Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/n;

    move-result-object p3

    invoke-static {p3}, Le/m/f/a/j;->e(Le/m/f/a/n;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2, v1}, Le/m/f/a/j;->V(Ljava/lang/CharSequence;Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/j$e;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0, p2, v1}, Le/m/f/a/j;->v(Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/n;

    move-result-object p3

    .line 11
    invoke-static {p3}, Le/m/f/a/j;->e(Le/m/f/a/n;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {p3}, Le/m/f/a/n;->a()I

    move-result v4

    if-nez v4, :cond_2

    .line 14
    iget-object p2, p2, Le/m/f/a/l;->b:Le/m/f/a/n;

    .line 15
    iget-object p2, p2, Le/m/f/a/n;->c:Ljava/util/List;

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p3, Le/m/f/a/n;->c:Ljava/util/List;

    .line 17
    :goto_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p3, Le/m/f/a/n;->d:Ljava/util/List;

    goto :goto_2

    .line 21
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-object p3, p3, Le/m/f/a/n;->d:Ljava/util/List;

    .line 23
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_2
    move-object v3, p2

    move-object v4, v1

    :cond_4
    const/4 p2, 0x0

    .line 25
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_5

    return-object v2

    .line 26
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 28
    sget-object p1, Le/m/f/a/j$e;->b:Le/m/f/a/j$e;

    return-object p1

    .line 29
    :cond_6
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_7

    return-object v0

    :cond_7
    if-le p2, p1, :cond_8

    .line 30
    sget-object p1, Le/m/f/a/j$e;->d:Le/m/f/a/j$e;

    return-object p1

    :cond_8
    const/4 p2, 0x1

    .line 31
    invoke-static {v4, p2}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, p1, :cond_9

    .line 32
    sget-object p1, Le/m/f/a/j$e;->f:Le/m/f/a/j$e;

    return-object p1

    .line 33
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {v4, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v2

    :goto_3
    return-object v0
.end method

.method public a(Le/m/f/a/o;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, v0, Le/m/f/a/l;->L:Le/m/f/a/n;

    .line 4
    invoke-virtual {p0, p1, v0}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public b(Ljava/util/List;Ljava/lang/String;)Le/m/f/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/f/a/k;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Le/m/f/a/k;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/f/a/k;

    .line 2
    invoke-virtual {v0}, Le/m/f/a/k;->b()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Le/m/f/a/k;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v2, v1}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :cond_1
    iget-object v1, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    .line 8
    iget-object v2, v0, Le/m/f/a/k;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    if-gt v2, v0, :cond_2

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4
    iget-object v4, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p1, Le/m/f/a/o;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Le/m/f/a/o;->k:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    iget v1, p1, Le/m/f/a/o;->b:I

    .line 8
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    if-ne p2, v3, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, v1, v3, v0}, Le/m/f/a/j;->T(ILe/m/f/a/j$c;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v1}, Le/m/f/a/j;->A(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0, v1, v3}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object v3

    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v2, v3, p2, v4}, Le/m/f/a/j;->k(Ljava/lang/String;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0, p1, v3, p2, v0}, Le/m/f/a/j;->K(Le/m/f/a/o;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/StringBuilder;)V

    .line 19
    invoke-virtual {p0, v1, p2, v0}, Le/m/f/a/j;->T(ILe/m/f/a/j$c;Ljava/lang/StringBuilder;)V

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/m/f/a/o;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p1, Le/m/f/a/o;->b:I

    .line 2
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Le/m/f/a/j;->A(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v0, v2}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    sget-object v4, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    invoke-virtual {p0, v1, v2, v4, p2}, Le/m/f/a/j;->k(Ljava/lang/String;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0, p1, v2, v4, v3}, Le/m/f/a/j;->K(Le/m/f/a/o;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {p0, v0, v4, v3}, Le/m/f/a/j;->T(ILe/m/f/a/j$c;Ljava/lang/StringBuilder;)V

    .line 10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;Le/m/f/a/l;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p2, Le/m/f/a/l;->h0:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p2, Le/m/f/a/l;->h0:Ljava/util/List;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p2, Le/m/f/a/l;->g0:Ljava/util/List;

    .line 5
    :goto_1
    invoke-virtual {p0, p2, p1}, Le/m/f/a/j;->b(Ljava/util/List;Ljava/lang/String;)Le/m/f/a/k;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Le/m/f/a/j;->l(Ljava/lang/String;Le/m/f/a/k;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final l(Ljava/lang/String;Le/m/f/a/k;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p2, Le/m/f/a/k;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    .line 3
    iget-object v2, p2, Le/m/f/a/k;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    sget-object v1, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    .line 6
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    iget-object v2, p2, Le/m/f/a/k;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    iget-object p2, p2, Le/m/f/a/k;->h:Ljava/lang/String;

    const-string v1, "$CC"

    .line 10
    invoke-virtual {p2, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 11
    sget-object p4, Le/m/f/a/j;->B:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 12
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p2, Le/m/f/a/k;->e:Ljava/lang/String;

    if-ne p3, v1, :cond_1

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 16
    sget-object p4, Le/m/f/a/j;->B:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 17
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :goto_0
    sget-object p2, Le/m/f/a/j$c;->d:Le/m/f/a/j$c;

    if-ne p3, p2, :cond_3

    .line 20
    sget-object p2, Le/m/f/a/j;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, ""

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public m(Le/m/f/a/o;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    sget-object v1, Le/m/f/a/j$c;->b:Le/m/f/a/j$c;

    iget v2, p1, Le/m/f/a/o;->b:I

    .line 2
    invoke-virtual {p0, v2}, Le/m/f/a/j;->A(I)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    .line 3
    iget-boolean p2, p1, Le/m/f/a/o;->k:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object v4, p1, Le/m/f/a/o;->l:Ljava/lang/String;

    :cond_0
    return-object v4

    .line 5
    :cond_1
    new-instance v3, Le/m/f/a/o;

    invoke-direct {v3}, Le/m/f/a/o;-><init>()V

    .line 6
    iget-boolean v5, p1, Le/m/f/a/o;->a:Z

    if-eqz v5, :cond_2

    .line 7
    iget v5, p1, Le/m/f/a/o;->b:I

    .line 8
    invoke-virtual {v3, v5}, Le/m/f/a/o;->c(I)Le/m/f/a/o;

    .line 9
    :cond_2
    iget-boolean v5, p1, Le/m/f/a/o;->c:Z

    if-eqz v5, :cond_3

    .line 10
    iget-wide v5, p1, Le/m/f/a/o;->d:J

    .line 11
    invoke-virtual {v3, v5, v6}, Le/m/f/a/o;->g(J)Le/m/f/a/o;

    .line 12
    :cond_3
    iget-boolean v5, p1, Le/m/f/a/o;->e:Z

    if-eqz v5, :cond_4

    .line 13
    iget-object v5, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v5}, Le/m/f/a/o;->e(Ljava/lang/String;)Le/m/f/a/o;

    .line 15
    :cond_4
    iget-boolean v5, p1, Le/m/f/a/o;->g:Z

    if-eqz v5, :cond_5

    .line 16
    iget-boolean v5, p1, Le/m/f/a/o;->h:Z

    .line 17
    invoke-virtual {v3, v5}, Le/m/f/a/o;->f(Z)Le/m/f/a/o;

    .line 18
    :cond_5
    iget-boolean v5, p1, Le/m/f/a/o;->i:Z

    if-eqz v5, :cond_6

    .line 19
    iget v5, p1, Le/m/f/a/o;->j:I

    .line 20
    invoke-virtual {v3, v5}, Le/m/f/a/o;->h(I)Le/m/f/a/o;

    .line 21
    :cond_6
    iget-boolean v5, p1, Le/m/f/a/o;->k:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 22
    iget-object v5, p1, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-boolean v6, v3, Le/m/f/a/o;->k:Z

    .line 25
    iput-object v5, v3, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 26
    :cond_7
    iget-boolean v5, p1, Le/m/f/a/o;->m:Z

    if-eqz v5, :cond_8

    .line 27
    iget-object v5, p1, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    .line 28
    invoke-virtual {v3, v5}, Le/m/f/a/o;->d(Le/m/f/a/o$a;)Le/m/f/a/o;

    .line 29
    :cond_8
    iget-boolean v5, p1, Le/m/f/a/o;->o:Z

    if-eqz v5, :cond_9

    .line 30
    iget-object p1, p1, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-boolean v6, v3, Le/m/f/a/o;->o:Z

    .line 33
    iput-object p1, v3, Le/m/f/a/o;->p:Ljava/lang/String;

    :cond_9
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, v3, Le/m/f/a/o;->e:Z

    .line 35
    iput-object v4, v3, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v2}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {p0, v3}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object v7

    .line 38
    sget-object v8, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    if-eq v7, v8, :cond_a

    move v8, v6

    goto :goto_0

    :cond_a
    move v8, p1

    .line 39
    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 40
    sget-object v8, Le/m/f/a/j$d;->a:Le/m/f/a/j$d;

    if-eq v7, v8, :cond_b

    sget-object v9, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    if-eq v7, v9, :cond_b

    sget-object v9, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-ne v7, v9, :cond_c

    :cond_b
    move p1, v6

    :cond_c
    const-string v9, "CO"

    .line 41
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-ne v7, v8, :cond_d

    const-string p1, "3"

    .line 42
    invoke-virtual {p0, v3, p1}, Le/m/f/a/j;->j(Le/m/f/a/o;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v4, p1

    goto/16 :goto_3

    :cond_d
    const-string v7, "BR"

    .line 43
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz p1, :cond_f

    .line 44
    iget-object p1, v3, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 46
    iget-object p1, v3, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    .line 48
    iget-object v4, v3, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 49
    :cond_e
    invoke-virtual {p0, v3, v4}, Le/m/f/a/j;->j(Le/m/f/a/o;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_f
    if-ne v2, v6, :cond_11

    .line 50
    invoke-virtual {p0, p2}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object p1

    .line 51
    invoke-virtual {p0, v3}, Le/m/f/a/j;->a(Le/m/f/a/o;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 52
    invoke-virtual {p0, v3}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Le/m/f/a/j;->U(Ljava/lang/CharSequence;Le/m/f/a/l;)Le/m/f/a/j$e;

    move-result-object p1

    sget-object p2, Le/m/f/a/j$e;->d:Le/m/f/a/j$e;

    if-eq p1, p2, :cond_10

    .line 53
    invoke-virtual {p0, v3, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 54
    :cond_10
    invoke-virtual {p0, v3, v0}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_11
    const-string p2, "001"

    .line 55
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    const-string p2, "MX"

    .line 56
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    const-string p2, "CL"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    const-string p2, "UZ"

    .line 57
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    :cond_12
    if-eqz p1, :cond_14

    .line 58
    :cond_13
    invoke-virtual {p0, v3}, Le/m/f/a/j;->a(Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 59
    invoke-virtual {p0, v3, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 60
    :cond_14
    invoke-virtual {p0, v3, v0}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_15
    if-eqz v8, :cond_17

    .line 61
    invoke-virtual {p0, v3}, Le/m/f/a/j;->a(Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_17

    if-eqz p3, :cond_16

    .line 62
    invoke-virtual {p0, v3, v1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_16
    sget-object p1, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    .line 63
    invoke-virtual {p0, v3, p1}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_17
    :goto_3
    if-eqz p3, :cond_18

    goto :goto_4

    .line 64
    :cond_18
    sget-object p1, Le/m/f/a/j;->j:Ljava/util/Map;

    invoke-static {v4, p1, v6}, Le/m/f/a/j;->Q(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    :goto_4
    return-object v4
.end method

.method public o(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Invalid or missing region code ("

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->p(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, v0, Le/m/f/a/l;->N:I

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid region code: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(I)Le/m/f/a/l;
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/f/a/j;->a:Le/m/f/a/d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Le/m/d/y/n;->P()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "001"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, v0, Le/m/f/a/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Le/m/f/a/d;->a:Ljava/lang/String;

    iget-object v0, v0, Le/m/f/a/d;->b:Le/m/f/a/b;

    invoke-static {p1, v1, v2, v0}, Le/m/f/a/c;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Le/m/f/a/b;)Le/m/f/a/l;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public s(Ljava/lang/String;)Le/m/f/a/l;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/f/a/j;->a:Le/m/f/a/d;

    .line 3
    iget-object v1, v0, Le/m/f/a/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Le/m/f/a/d;->a:Ljava/lang/String;

    iget-object v0, v0, Le/m/f/a/d;->b:Le/m/f/a/b;

    invoke-static {p1, v1, v2, v0}, Le/m/f/a/c;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Le/m/f/a/b;)Le/m/f/a/l;

    move-result-object p1

    return-object p1
.end method

.method public final t(ILjava/lang/String;)Le/m/f/a/l;
    .locals 1

    const-string v0, "001"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/m/f/a/j;->r(I)Le/m/f/a/l;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public u(Le/m/f/a/o;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p1, Le/m/f/a/o;->h:Z

    if-eqz v1, :cond_0

    .line 3
    iget v1, p1, Le/m/f/a/o;->j:I

    if-lez v1, :cond_0

    .line 4
    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 5
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-wide v1, p1, Le/m/f/a/o;->d:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(Le/m/f/a/l;Le/m/f/a/j$d;)Le/m/f/a/n;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p1, Le/m/f/a/l;->x:Le/m/f/a/n;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p1, Le/m/f/a/l;->t:Le/m/f/a/n;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p1, Le/m/f/a/l;->r:Le/m/f/a/n;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p1, Le/m/f/a/l;->n:Le/m/f/a/n;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p1, Le/m/f/a/l;->p:Le/m/f/a/n;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p1, Le/m/f/a/l;->l:Le/m/f/a/n;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p1, Le/m/f/a/l;->j:Le/m/f/a/n;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p1, Le/m/f/a/l;->h:Le/m/f/a/n;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p1, Le/m/f/a/l;->f:Le/m/f/a/n;

    return-object p1

    .line 11
    :pswitch_9
    iget-object p1, p1, Le/m/f/a/l;->d:Le/m/f/a/n;

    return-object p1

    .line 12
    :goto_0
    iget-object p1, p1, Le/m/f/a/l;->b:Le/m/f/a/n;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(Le/m/f/a/o;)Le/m/f/a/j$d;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p1, Le/m/f/a/o;->b:I

    .line 3
    invoke-virtual {p0, v1, v0}, Le/m/f/a/j;->t(ILjava/lang/String;)Le/m/f/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0}, Le/m/f/a/j;->x(Ljava/lang/String;Le/m/f/a/l;)Le/m/f/a/j$d;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/String;Le/m/f/a/l;)Le/m/f/a/j$d;
    .locals 3

    .line 1
    sget-object v0, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    sget-object v1, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    iget-object v2, p2, Le/m/f/a/l;->b:Le/m/f/a/n;

    .line 2
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p2, Le/m/f/a/l;->j:Le/m/f/a/n;

    .line 4
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object p1, Le/m/f/a/j$d;->e:Le/m/f/a/j$d;

    return-object p1

    .line 6
    :cond_1
    iget-object v2, p2, Le/m/f/a/l;->h:Le/m/f/a/n;

    .line 7
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object p1, Le/m/f/a/j$d;->d:Le/m/f/a/j$d;

    return-object p1

    .line 9
    :cond_2
    iget-object v2, p2, Le/m/f/a/l;->l:Le/m/f/a/n;

    .line 10
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sget-object p1, Le/m/f/a/j$d;->f:Le/m/f/a/j$d;

    return-object p1

    .line 12
    :cond_3
    iget-object v2, p2, Le/m/f/a/l;->p:Le/m/f/a/n;

    .line 13
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    sget-object p1, Le/m/f/a/j$d;->g:Le/m/f/a/j$d;

    return-object p1

    .line 15
    :cond_4
    iget-object v2, p2, Le/m/f/a/l;->n:Le/m/f/a/n;

    .line 16
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    sget-object p1, Le/m/f/a/j$d;->h:Le/m/f/a/j$d;

    return-object p1

    .line 18
    :cond_5
    iget-object v2, p2, Le/m/f/a/l;->r:Le/m/f/a/n;

    .line 19
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    sget-object p1, Le/m/f/a/j$d;->i:Le/m/f/a/j$d;

    return-object p1

    .line 21
    :cond_6
    iget-object v2, p2, Le/m/f/a/l;->t:Le/m/f/a/n;

    .line 22
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 23
    sget-object p1, Le/m/f/a/j$d;->j:Le/m/f/a/j$d;

    return-object p1

    .line 24
    :cond_7
    iget-object v2, p2, Le/m/f/a/l;->x:Le/m/f/a/n;

    .line 25
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    sget-object p1, Le/m/f/a/j$d;->k:Le/m/f/a/j$d;

    return-object p1

    .line 27
    :cond_8
    iget-object v2, p2, Le/m/f/a/l;->d:Le/m/f/a/n;

    .line 28
    invoke-virtual {p0, p1, v2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 29
    iget-boolean v1, p2, Le/m/f/a/l;->Z:Z

    if-eqz v1, :cond_9

    return-object v0

    .line 30
    :cond_9
    iget-object p2, p2, Le/m/f/a/l;->f:Le/m/f/a/n;

    .line 31
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v0

    .line 32
    :cond_a
    sget-object p1, Le/m/f/a/j$d;->a:Le/m/f/a/j$d;

    return-object p1

    .line 33
    :cond_b
    iget-boolean v0, p2, Le/m/f/a/l;->Z:Z

    if-nez v0, :cond_c

    .line 34
    iget-object p2, p2, Le/m/f/a/l;->f:Le/m/f/a/n;

    .line 35
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->F(Ljava/lang/String;Le/m/f/a/n;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 36
    sget-object p1, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    return-object p1

    :cond_c
    return-object v1
.end method

.method public y(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const-string p1, "ZZ"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public z(Le/m/f/a/o;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p1, Le/m/f/a/o;->b:I

    .line 2
    iget-object v1, p0, Le/m/f/a/j;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing/invalid country_code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v3

    .line 9
    iget-boolean v4, v3, Le/m/f/a/l;->j0:Z

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Le/m/f/a/j;->e:Le/m/f/a/q/b;

    .line 11
    iget-object v3, v3, Le/m/f/a/l;->k0:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v3}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 13
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, p1, v3}, Le/m/f/a/j;->x(Ljava/lang/String;Le/m/f/a/l;)Le/m/f/a/j$d;

    move-result-object v3

    sget-object v4, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    if-eq v3, v4, :cond_2

    :goto_0
    move-object v2, v1

    :cond_4
    return-object v2
.end method
