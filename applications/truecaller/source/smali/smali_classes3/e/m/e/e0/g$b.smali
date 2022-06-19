.class public Le/m/e/e0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/e0/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/e/e0/g;->a(Le/m/e/f0/a;)Le/m/e/e0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/e/e0/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/e/m;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Le/m/e/e0/g;Le/m/e/m;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/e/e0/g$b;->a:Le/m/e/m;

    iput-object p3, p0, Le/m/e/e0/g$b;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/g$b;->a:Le/m/e/m;

    iget-object v1, p0, Le/m/e/e0/g$b;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Le/m/e/m;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
