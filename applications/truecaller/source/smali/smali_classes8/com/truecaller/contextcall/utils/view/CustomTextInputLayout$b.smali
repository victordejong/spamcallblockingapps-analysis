.class public final enum Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

.field public static final enum b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

.field public static final synthetic c:[Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    new-instance v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->c:[Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;
    .locals 1

    const-class v0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;
    .locals 1

    sget-object v0, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->c:[Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    invoke-virtual {v0}, [Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$b;

    return-object v0
.end method
