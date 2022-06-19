.class public Le/a/m0/c1/b0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/b0$b;
.implements Le/a/m0/c1/b0$p;
.implements Le/a/m0/c1/b0$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/c1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/m0/c1/b0$i;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/m0/c1/b0$i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/m0/c1/b0$i;->a:Ljava/lang/String;

    iget-object v0, p0, Le/a/m0/c1/b0$i;->b:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$i;->b:Ljava/lang/Object;

    return-object v0
.end method
