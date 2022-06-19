.class public final Le/a/x4/j/c/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x4/j/c/b;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/x4/j/c/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/x4/j/c/b$a;

    invoke-direct {v0}, Le/a/x4/j/c/b$a;-><init>()V

    sput-object v0, Le/a/x4/j/c/b$a;->b:Le/a/x4/j/c/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
