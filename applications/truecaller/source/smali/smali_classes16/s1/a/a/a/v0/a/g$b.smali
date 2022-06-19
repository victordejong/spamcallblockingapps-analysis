.class public Ls1/a/a/a/v0/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/a/g$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/g$b;->a:Ls1/a/a/a/v0/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ls1/a/a/a/v0/a/i;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {}, Ls1/a/a/a/v0/a/i;->values()[Ls1/a/a/a/v0/a/i;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    .line 5
    iget-object v6, p0, Ls1/a/a/a/v0/a/g$b;->a:Ls1/a/a/a/v0/a/g;

    .line 6
    iget-object v7, v5, Ls1/a/a/a/v0/a/i;->a:Ls1/a/a/a/v0/f/e;

    .line 7
    invoke-virtual {v7}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ls1/a/a/a/v0/a/g;->b(Ls1/a/a/a/v0/a/g;Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v6

    .line 8
    iget-object v7, p0, Ls1/a/a/a/v0/a/g$b;->a:Ls1/a/a/a/v0/a/g;

    .line 9
    iget-object v8, v5, Ls1/a/a/a/v0/a/i;->b:Ls1/a/a/a/v0/f/e;

    .line 10
    invoke-virtual {v8}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ls1/a/a/a/v0/a/g;->b(Ls1/a/a/a/v0/a/g;Ljava/lang/String;)Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    .line 11
    invoke-virtual {v0, v5, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Ls1/a/a/a/v0/a/g$d;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ls1/a/a/a/v0/a/g$d;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ls1/a/a/a/v0/a/g$a;)V

    return-object v3
.end method
