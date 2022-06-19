.class public final Lcom/truecaller/suspension/UnsuspensionMethod$a;
.super Lcom/truecaller/suspension/UnsuspensionMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/suspension/UnsuspensionMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/truecaller/suspension/UnsuspensionMethod$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/suspension/UnsuspensionMethod$a;

    invoke-direct {v0}, Lcom/truecaller/suspension/UnsuspensionMethod$a;-><init>()V

    sput-object v0, Lcom/truecaller/suspension/UnsuspensionMethod$a;->a:Lcom/truecaller/suspension/UnsuspensionMethod$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/suspension/UnsuspensionMethod;-><init>(Ls1/z/c/f;)V

    return-void
.end method
